When(/^I press Add link$/) do
  click_on 'Add link'
end

Then(/^I should be able to save the link's URL and name$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I enter "(.*?)" and "(.*?)"$/) do |link, link_title|
	within("#new-link") do
  		fill_in 'url', with: link
  		fill_in 'title', with: link_title
	end
end
