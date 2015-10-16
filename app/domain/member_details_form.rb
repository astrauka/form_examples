class MemberDetailsForm
  # without this field values will not be populated
  attr_writer :user_attributes, :user_profile_attributes

  def initialize(user, user_profile, params)
    @user = user
    @user_profile = user_profile
    @params = params
  end

  # things need defaults for new action
  def user
    @user ||= User.new
  end

  def user_profile
    @user_profile ||= UserProfile.new
  end

  def params
    @params ||= {}
  end
end
