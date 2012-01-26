class CartPage
  include PageObject

  def continue_adoption
    button_element(:value => "Complete the Adoption").click
  end
end
