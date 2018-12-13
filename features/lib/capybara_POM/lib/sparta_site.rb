require_relative 'pages/registration'
require_relative 'pages/successful_confirmation_page'

module SpartaSite

  def sparta_registration
    Registration.new
  end

  def sparta_success_page
    SuccessfulConfirmation.new
  end

end
