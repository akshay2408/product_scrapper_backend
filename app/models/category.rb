class Category < ApplicationRecord
  has_many :products

  scope :with_product_detail, -> {
    select("categories.id, categories.name, products.id as product_id, products.url as product_url, products.title as product_title")
  }
end
