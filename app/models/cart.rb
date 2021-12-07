class Cart
  include ActiveModel::Model
  attr_accessor :name_user, :product, :quantity_product

  def save
    has_errors = validate_data
    unless has_errors 
      p "Enviamos los datos al super backend de CS"
      # ToDo: send latitude and longitude
      data = {
        origin: 'e-commerce',
        user: self.name_user,
        product: self.product,
        quantity: self.quantity_product,
        latitude: 'pending',
        longitude: 'pending'
      }
      p data
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
    [:name_user, :product, :quantity_product].each do |field|
      if self.send(field).blank?
        with_errors << true
        self.errors.add(field, I18n.t('errors.send_field'))
      end
    end
    with_errors.include?(true)
  end
end
