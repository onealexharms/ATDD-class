class DetailsPage
  include PageObject

  def choose_to_adopt
    button_element(:value => 'Adopt Me!').click
  end
end

