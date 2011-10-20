class AdminController < SessionController
  def index
    @emails = InterestedEmail.all
  end
end
