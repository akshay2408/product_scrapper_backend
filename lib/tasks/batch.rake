namespace :batch do
  desc 'Expire Product Data'
  task expire_product_data: :environment do
    products = Product.where('DATE(created_at) IN (?)', Date.today - 1.week)
    UpdateExpiredProduct.new(product_url).perform
  end
end