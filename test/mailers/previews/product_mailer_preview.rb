# Preview all emails at http://localhost:3000/rails/mailers/product_mailer
class ProductMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/product_mailer/in_stock
  def in_stock
    ProductMailer.in_stock
  end
end
