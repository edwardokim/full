require 'spec_helper'

describe "UserPages" do
	subject {page}
  describe "signup page" do
  	before { visit signup_path }
    it {should have_selector('h1', text: 'sign up')}
    if { should have_selector('title', text: full_title('signup'))}
    	
    end
  end
end
