# require 'spec_helper'
# require_relative 'helpers/session'

# include SessionHelpers

# feature "User signs up" do
	
# 	scenario "when being logged out" do
# 		lambda { sign_up }.should change(User, :count).by(1)
# 		expect(page).to have_content("Welcome, alice@example.com")
# 		expect(User.first.email).to eq("alice@example.com")
# 	end

# 	scenario "with a password that doesn't match" do
# 		lambda { sign_up('a@a.com', 'pass', 'wrong')}.should change(User, :count).by(0)
# 		expect(current_path).to eq('/users')
# 		expect(page).to have_content("Sorry, your passwords don't match")
# 	end

# 	scenario "with an email that is already registered" do
# 		lambda {sign_up}.should change(User, :count).by(1)
# 		lambda {sign_up}.should change(User, :count).by(0)
# 		expect(page).to have_content("This email is already taken")
# 	end

# end