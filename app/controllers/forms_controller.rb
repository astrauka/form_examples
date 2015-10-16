class FormsController < ApplicationController
  helper_method :user,
                :member_details_form

  def index
  end

  private

  def user
    @user ||= User.first
  end

  def user_profile
    @user_profile ||= user.user_profile
  end

  def member_details_form
    @member_details_form ||= MemberDetailsForm.new(user, user_profile, params)
  end
end
