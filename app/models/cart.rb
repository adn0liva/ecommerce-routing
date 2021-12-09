class Cart
  include ActiveModel::Model
  attr_accessor :name_user, :product, :quantity_product, :coords, :latitude, :longitude

  def save
    has_errors = validate_data
    unless has_errors 
      send_data_to_backend
    end
    !has_errors
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
    product_json = Article.get_product(self.product)
    loads = product_json[:loads]
    # loads = { load0: self.quantity_product,load1: self.quantity_product*2, load2: self.quantity_product*3 }
    {
      origin: 'e-commerce',
      user: self.name_user,
      product: self.product,
      quantity: self.quantity_product,
      loads: loads,
      latitude: self.latitude,
      longitude: self.longitude
    }
  end

  # ToDo: move to a service
  def send_data_to_backend
    p "Enviamos los datos al super backend de CS"
    # ToDo: send data to backend
    data = get_data_as_json
    p data
  end
end
