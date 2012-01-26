class HomePage
  include PageObject

  page_url 'http://localhost:3000'

  def view_details_for(number)
    button_element(:value => 'View Details', :index => number).click
  end

  def confirmation_message
    "Thank you for adopting a puppy!"
  end
end

