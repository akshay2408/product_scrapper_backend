namespace :batch do
  desc 'Expire Product Data'
  task expire_product_data: :environment do
    products =  Product.where('created_at < ?', 1.week.ago)
    products.each do |product|
      UpdateExpiredProductJob.new.perform(product.url)
    end
  end
end
