require 'capybara/dsl'

class Registration
  include Capybara::DSL
  #Constants
  #PageObjects
  HOMEPAGE_URL = 'https://crispyjourney.herokuapp.com/'
  FIRST_NAME_FIELD_ID = 'firstName'
  LAST_NAME_FIELD_ID = 'lastName'
  AGE_FIELD_BY_TYPE = 'input[type="number"]'
  DOB_FIELD = 'dob'
  FEMALE_FIELD_LABEL = 'label[for="customRadioInline2"]'
  FEMALE_FIELD_INPUT = 'input[id="customRadioInline2"]'
  MALE_FIELD_LABEL = 'label[for="customRadioInline1"]'
  MALE_FIELD_INPUT = 'input[id="customRadioInline1"]'
  DEGREE_FIELD = 'input[placeholder="Enter Degree"]'
  UNIVERSITY_FIELD = 'inputUni'
  ADDRESS = 'input[placeholder="1234 Main St"]'
  ADDRESS_NO_TWO = 'input[placeholder="Apartment, studio, or floor"]'
  CITY_FIELD = 'inputCity'
  COUNTY_FIELD = 'inputCounty'
  POSTCODE_FIELD = 'inputPostcode'
  EMAIL_ADDRESS_FIELD = 'inputemailaddress'
  SKILLS_FIELD = 'exampleFormControlTextarea1'
  PHONE_NUMBER_FIELD = 'exampleFormControlInput1'
  LINKEDIN_URL = 'input[type="url"]'
  CV_FIELD = 'input[type="file"]'
  DEVOPS_FIELD_LABEL = 'label[for="streamRadioInline2"]'
  DEVOPS_FIELD_ID = '#streamRadioInline2'
  TERMS_CONDITIONS_FIELD = '#terms'
  RATE_EXPERIENCE_SLIDER_ID = '#value_for_slider'
  SUBMIT_ID = 'button[type="submit"]'

  def visit_home_page
    visit(HOMEPAGE_URL)
  end

  def fill_in_first_name_field(name)
    fill_in(FIRST_NAME_FIELD_ID, :with => name)
  end

  def check_first_name_field
    find_field(FIRST_NAME_FIELD_ID).value
  end

  def fill_in_last_name_field(name)
    fill_in(LAST_NAME_FIELD_ID, :with => name)
  end

  def check_last_name_field
    find_field(LAST_NAME_FIELD_ID).value
  end

  def fill_in_age_field
    find(AGE_FIELD_BY_TYPE).set 21
  end

  def check_age_field
    find(AGE_FIELD_BY_TYPE).value.to_i
  end

  def fill_in_dob
    fill_in(DOB_FIELD, :with => '14/04/1995')
  end

  def check_dob_field
    find_field(DOB_FIELD).value
  end

  def select_female_field
    find(FEMALE_FIELD_LABEL).click
  end

  def is_female_selected
    find(FEMALE_FIELD_INPUT).selected?
  end

  def select_male_field
    find(MALE_FIELD_LABEL).click
  end

  def is_male_selected
    find(MALE_FIELD_INPUT).selected?
  end

  def fill_in_degree
    find(DEGREE_FIELD).send_keys('Chemistry')
  end

  def check_degree_field
    find(DEGREE_FIELD).value
  end

  def select_university
    select('University of Oxford', :from => UNIVERSITY_FIELD)
  end

  def is_university_field_selected
    find_field(UNIVERSITY_FIELD).value
  end

  def fill_in_address
    find(ADDRESS).send_keys('23 Bank Street')
  end

  def check_address_field
    find(ADDRESS).value
  end

  def fill_in_address_no_two
    find(ADDRESS_NO_TWO).send_keys('Flat 3')
  end

  def check_address_no_two_field
    find(ADDRESS_NO_TWO).value
  end

  def fill_in_city_field
    fill_in(CITY_FIELD, :with => 'London')
  end

  def check_city_field
    find_field(CITY_FIELD).value
  end

  def select_county
    select('Bristol', :from => COUNTY_FIELD)
  end

  def is_county_field_selected
    find_field(COUNTY_FIELD).value
  end

  def fill_in_postcode_field
    fill_in(POSTCODE_FIELD, :with => 'SE12 34L')
  end

  def check_postcode_field
    find_field(POSTCODE_FIELD).value
  end

  def fill_in_email_address_field
    fill_in(EMAIL_ADDRESS_FIELD, :with => 'h@hotmail.com')
  end

  def check_email_address_field
    find_field(EMAIL_ADDRESS_FIELD).value
  end

  def fill_in_skills_field
    fill_in(SKILLS_FIELD, :with => 'Lorem ipsum')
  end

  def check_skills_field
    find_field(SKILLS_FIELD).value
  end

  def fill_in_phone_number_field
    fill_in(PHONE_NUMBER_FIELD, :with => '0800 347 5672')
  end

  def check_phone_number_field
    find_field(PHONE_NUMBER_FIELD).value
  end

  def fill_in_linkedIn_field
    find(LINKEDIN_URL).send_keys('https://abc.url')
  end

  def check_linkedIn_field
    find(LINKEDIN_URL).value
  end

  def upload_file
    find(CV_FIELD).send_keys('C:\Users\Tech-W103\Desktop')
  end

  def get_file
    find(CV_FIELD).value
  end

  def select_devops_field
    find(DEVOPS_FIELD_LABEL).click
  end

  def is_devops_selected
    find(DEVOPS_FIELD_ID).selected?
  end

  def input_terms_conditions
    find(TERMS_CONDITIONS_FIELD).click
  end

  def is_input_terms_conditions_selected
    find(TERMS_CONDITIONS_FIELD).selected?
  end

  def get_rating_experience
    find(RATE_EXPERIENCE_SLIDER_ID).text.to_i
  end

  def sign_in
    find(SUBMIT_ID).click
  end

end
