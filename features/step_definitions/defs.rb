When(/^I go to "([^"]*?)"(?: page)?$/) do |url|
  visit url
end

Then(/^(?:the )?page should (not )?(?:have|say) "(.*?)"$/) do |negate, text|
  if negate
    expect(page).to have_no_text text
  else
    expect(page).to have_text(text)
  end
end
