Spree::Product.class_eval do
  attr_accessible :supplier_id

  belongs_to :supplier, :class_name => "Spree::Supplier"
end
