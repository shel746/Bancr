Given(/^I am on the main page trying to upload a small csv file$/) do
    visit('https://localhost/Bancr/index.php')
    fill_in 'email', :with => 'halfond@usc.edu'
    fill_in 'password', :with => 'password'
    click_button 'signInButton'
end

When(/^I specify and submit a file with correct info$/) do
    attach_file('csv-file', File.absolute_path('small_transactions.csv'))
    click_on('upload')
end

When(/^I click upload$/) do
    page.driver.browser.switch_to.alert.accept
end

Then(/^I should see the new transactions$/) do
    page.should have_content 'A'
    click_button('removeAccount', match: :first)
    click_button('removeAccount', match: :first)
end