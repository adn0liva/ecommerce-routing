require 'uri'
require 'net/http'

class CartSender
  
  def self.send_data_to_backend(data)
    core_demands_url = Rails.application.credentials.core_demands_url 
    uri = URI(core_demands_url)
    p "Enviamos los datos al super backend de CS"
    res = Net::HTTP.post_form(uri, data)
    p res.body
    res.is_a?(Net::HTTPSuccess)
  end
  
  def self.get_demands
    core_demands_url = Rails.application.credentials.core_demands_url 
    uri = URI(core_demands_url)
    res = Net::HTTP.get_response(uri)
    p res.body
    res.is_a?(Net::HTTPSuccess)
  end
  
  def self.get_demand_sets
    core_demand_sets_url = Rails.application.credentials.core_demand_sets_url
    uri = URI(core_demand_sets_url)
    res = Net::HTTP.get_response(uri)
    p res.body
    res.is_a?(Net::HTTPSuccess)
  end  

end
