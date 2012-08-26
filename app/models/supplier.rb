class Spree::Supplier < ActiveRecord::Base
  attr_accessible :description, :email, :facebook, :fax, :name, :notes, :phone, :title, :twitter, :website
  has_many :products

end
