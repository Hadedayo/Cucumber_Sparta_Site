describe 'filling in the registration form' do

  context 'it should show success message when complete' do

    it "should show confirmation message once the the form is filled in correctly" do
      @sparta_site = SpartaSite.new
      @sparta_site.sparta_registration.visit_home_page

      @sparta_site.sparta_registration.fill_in_first_name_field('Hassanat')
      expect(@sparta_site.sparta_registration.check_first_name_field).to eq 'Hassanat'

      @sparta_site.sparta_registration.fill_in_last_name_field('Ade')
      expect(@sparta_site.sparta_registration.check_last_name_field).to eq 'Ade'

      @sparta_site.sparta_registration.fill_in_age_field
      expect(@sparta_site.sparta_registration.check_age_field).to eq 21

      @sparta_site.sparta_registration.fill_in_dob
      expect(@sparta_site.sparta_registration.check_dob_field).to eq '1995-04-14'

      @sparta_site.sparta_registration.select_female_field
      expect(@sparta_site.sparta_registration.is_female_selected).to be true
      expect(@sparta_site.sparta_registration.is_male_selected).to be false

      @sparta_site.sparta_registration.fill_in_degree
      expect(@sparta_site.sparta_registration.check_degree_field).to eq 'Chemistry'

      @sparta_site.sparta_registration.select_university
      expect(@sparta_site.sparta_registration.is_university_field_selected).to eq 'University of Oxford'

      @sparta_site.sparta_registration.fill_in_address
      expect(@sparta_site.sparta_registration.check_address_field).to eq '23 Bank Street'

      @sparta_site.sparta_registration.fill_in_address_no_two
      expect(@sparta_site.sparta_registration.check_address_no_two_field).to eq 'Flat 3'

      @sparta_site.sparta_registration.fill_in_city_field
      expect(@sparta_site.sparta_registration.check_city_field).to eq 'London'

      @sparta_site.sparta_registration.select_county
      expect(@sparta_site.sparta_registration.is_county_field_selected).to eq 'Bristol'

      @sparta_site.sparta_registration.fill_in_postcode_field
      expect(@sparta_site.sparta_registration.check_postcode_field).to eq 'SE12 34L'

      @sparta_site.sparta_registration.fill_in_email_address_field
      expect(@sparta_site.sparta_registration.check_email_address_field).to eq 'h@hotmail.com'

      @sparta_site.sparta_registration.fill_in_skills_field
      expect(@sparta_site.sparta_registration.check_skills_field).to eq 'Lorem ipsum'

      @sparta_site.sparta_registration.fill_in_phone_number_field
      expect(@sparta_site.sparta_registration.check_phone_number_field).to eq '0800 347 5672'

      @sparta_site.sparta_registration.fill_in_linkedIn_field
      expect(@sparta_site.sparta_registration.check_linkedIn_field).to eq 'https://abc.url'

      @sparta_site.sparta_registration.upload_file
      expect(@sparta_site.sparta_registration.get_file).not_to eq "No file chosen"

      @sparta_site.sparta_registration.select_devops_field
      expect(@sparta_site.sparta_registration.is_devops_selected).to eq true

      @sparta_site.sparta_registration.input_terms_conditions
      expect(@sparta_site.sparta_registration.is_input_terms_conditions_selected).to be true

      @sparta_site.sparta_registration.get_rating_experience
      expect(@sparta_site.sparta_registration.get_rating_experience).to be_between(1,100).inclusive

      @sparta_site.sparta_registration.sign_in
      expect(@sparta_site.sparta_success_page.current_url).to eq 'https://crispyjourney.herokuapp.com/registration_complete?dob=1995-04-14&customRadioInline1=on&cv=Desktop&streamRadioInline1=on'
      sleep 2
      expect(@sparta_site.sparta_success_page.get_confirmation_text).to eq (@sparta_site.sparta_success_page.registration_confirmation_text)
      sleep 2
    end

  end
end
