json.extract! product, :id, :product_name, :product_date, :product_image, :product_price, :product_sku, :product_description, :created_at, :updated_at
json.url product_url(product, format: :json)
