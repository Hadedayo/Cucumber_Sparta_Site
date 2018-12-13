Given("I access the Sparta registration form page") do
  p @users
  sparta_registration.visit_home_page
  sleep 2
end

And("I input first name") do
  sparta_registration.fill_in_first_name_field('Tee')
  expect(sparta_registration.check_first_name_field).to eq 'Tee'
end

And("I input last name") do
  sparta_registration.fill_in_last_name_field('Ade')
  expect(sparta_registration.check_last_name_field).to eq 'Ade'
end

And("I input age") do
  sparta_registration.fill_in_age_field
  expect(sparta_registration.check_age_field).to eq 21
end

And("I input dob") do
  sparta_registration.fill_in_dob
  expect(sparta_registration.check_dob_field).to eq '1995-04-14'
end

And("I select female") do
  sparta_registration.select_female_field
  expect(sparta_registration.is_female_selected).to be true
end

And("I input a degree") do
  sparta_registration.fill_in_degree
  expect(sparta_registration.check_degree_field).to eq 'Chemistry'
end

And("I select a university") do
  sparta_registration.select_university
  expect(sparta_registration.is_university_field_selected).to eq 'University of Oxford'
end

And("I input an address") do
  sparta_registration.fill_in_address
  expect(sparta_registration.check_address_field).to eq '23 Bank Street'
end

And("I input an address_no_two") do
  sparta_registration.fill_in_address_no_two
  expect(sparta_registration.check_address_no_two_field).to eq 'Flat 3'
end

And("I input a city") do
  sparta_registration.fill_in_city_field
  expect(sparta_registration.check_city_field).to eq 'London'
end

And("I input a county") do
  sparta_registration.select_county
  expect(sparta_registration.is_county_field_selected).to eq 'Bristol'
end

And("I input a postcode") do
  sparta_registration.fill_in_postcode_field
  expect(sparta_registration.check_postcode_field).to eq 'SE12 34L'
end

And("I input an email address") do
  sparta_registration.fill_in_email_address_field
  expect(sparta_registration.check_email_address_field).to eq 'h@hotmail.com'
end

And("I input information into the skills field") do
  sparta_registration.fill_in_skills_field
  expect(sparta_registration.check_skills_field).to eq 'Lorem ipsum'
end

And("I input phone number") do
  sparta_registration.fill_in_phone_number_field
  expect(sparta_registration.check_phone_number_field).to eq '0800 347 5672'
end

And("I input linkedIN URL") do
  sparta_registration.fill_in_linkedIn_field
  expect(sparta_registration.check_linkedIn_field).to eq 'https://abc.url'
end

And("I upload a file") do
  sparta_registration.upload_file
  expect(sparta_registration.get_file).not_to eq "No file chosen"
end

And("I select devops") do
  sparta_registration.select_devops_field
  expect(sparta_registration.is_devops_selected).to eq true
end

And("I select terms & conditions") do
  sparta_registration.input_terms_conditions
  expect(sparta_registration.is_input_terms_conditions_selected).to eq true
end

When("I click the sign in button") do
  sparta_registration.sign_in
end

Then("I receive a message for successful confirmation") do
  expect(sparta_success_page.get_confirmation_text).to eq sparta_success_page.registration_confirmation_text
end

#////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////
And("I input information onto all fields on the page") do
  sparta_registration.fill_in_first_name_field('Tee')
  sparta_registration.fill_in_last_name_field('Ade')
  sparta_registration.fill_in_age_field
  sparta_registration.fill_in_dob
  sparta_registration.select_female_field
  sparta_registration.fill_in_degree
  sparta_registration.select_university
  sparta_registration.fill_in_address
  sparta_registration.fill_in_address_no_two
  sparta_registration.fill_in_city_field
  sparta_registration.select_county
  sparta_registration.fill_in_postcode_field
  sparta_registration.fill_in_email_address_field
  sparta_registration.fill_in_skills_field
  sparta_registration.fill_in_phone_number_field
  sparta_registration.fill_in_linkedIn_field
  sparta_registration.upload_file
  sparta_registration.select_devops_field
  sparta_registration.input_terms_conditions
end

#////////////////////////////////////////////////////

Then("I receive error messages for the mandatory fields") do
 expect(sparta_registration.get_first_name_error_message).to eq sparta_registration.invalid_first_name_text

 expect(sparta_registration.get_last_name_error_message).to eq sparta_registration.invalid_last_name_text

 expect(sparta_registration.get_age_error_message).to eq sparta_registration.invalid_age_text

 expect(sparta_registration.is_female_selected).not_to eq true

 expect(sparta_registration.is_male_selected).not_to eq true

 expect(sparta_registration.get_address_error_message).to eq sparta_registration.invalid_address_text

end
