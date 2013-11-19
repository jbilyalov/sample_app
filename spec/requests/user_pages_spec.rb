require 'spec_helper'

describe "User Pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_content('Sign Up') }
    it { should have_title('Sign Up') }
  end
end