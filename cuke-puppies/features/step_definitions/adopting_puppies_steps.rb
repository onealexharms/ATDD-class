Given /^I've decided which puppy to adopt$/ do
  puppy_number = 0
  visit_page(HomePage).view_details_for(puppy_number)
end

When /^I complete the adoption process$/ do
  on_page(DetailsPage).choose_to_adopt
  on_page(CartPage).continue_adoption
  on_page(AdopterPage).enter_adopter_info
  on_page(AdopterPage).enter_payment_info
  on_page(AdopterPage).confirm_to_complete
end

Then /^I should see a confirmation$/ do
  on_page(HomePage).text.should include on_page(HomePage).confirmation_message
  
end


