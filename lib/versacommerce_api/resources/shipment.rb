# -*- encoding : utf-8 -*-
module VersacommerceAPI

  class Shipment < Base
    include Associatable
    
    def self.root!
      self.prefix = "/api/"
    end

    def order
      associated_resource "order", false
    end

    def items
      associated_resource "items"
    end
  end
  
end
