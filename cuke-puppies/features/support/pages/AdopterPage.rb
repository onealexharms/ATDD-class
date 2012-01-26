class AdopterPage
  include PageObject

  text_field(:name, :id => "order_name")
  text_field(:address, :id => "order_address")
  text_field(:email, :id => "order_email")
  select_list(:payment_method, :id => "order_pay_type")
  
  def enter_adopter_info
    self.name = "Mickey Mouse"
    self.address = "123 Oak St"
    self.email = "mickey@disney.com"
  end

  def enter_payment_info
    self.payment_method = 'Check'
  end

 def confirm_to_complete
   button_element(:value => 'Place Order').click  
 end

end
