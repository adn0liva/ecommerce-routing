class Cart
  include ActiveModel::Model
  attr_accessor :name_user, :product, :quantity_product, :coords, :latitude, :longitude
  def save
    has_errors = validate_data
    response = false
    unless has_errors
      data = get_data_as_json
      response = CartSender.send_data_to_backend(data)
      if response == false
        self.errors.add("Error", I18n.t('errors.connection_response'))
      end
    end
    !has_errors && response
  end

  def validate_user
    if self.name_user.blank?
      self.errors.add(name_user, I18n.t('errors.send_name'))
      return false
    end
    true
  end

  def validate_data
    with_errors = []
    [:name_user, :product, :quantity_product, :latitude, :longitude].each do |field|
      if self.send(field).blank?
        with_errors << true
        self.errors.add(field, I18n.t('errors.send_field'))
      end
    end
    with_errors.include?(true)
  end

  def get_data_as_json
    product = Article.get_product(self.product)

    loads = []
    product[:loads].each do |l|
      loads.push({ "load" => (l[:load].to_i * self.quantity_product.to_i) })
      loads
    end

    {
      origin: "-34.601621,-70.978777",
      destination: self.latitude + "," + self.longitude,
      user: self.name_user,
      document: self.product,
      quantity: self.quantity_product,
      loads: loads,
      source: "e-commerce"
    }
  end
end
