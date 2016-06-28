Given(/^I am located on the Bancr login page$/) do
    visit('https://localhost/Bancr/index.php')
    fill_in 'email', :with => 'halfond@usc.edu'
    fill_in 'password', :with => 'password'
    click_button 'signInButton'
end


When(/^I upload one csv file$/) do
  attach_file('csv-file', File.absolute_path('transactions.csv'))
  click_on('upload')
  page.driver.browser.switch_to.alert.accept
end

When(/^I click on the button to show transactions$/) do
     check('display[]', match: :first)
end

Then(/^I should see the transactions appear for A$/) do
    page.should have_content('Target')
    click_button('removeAccount', match: :first)
    click_button('removeAccount', match: :first)
    click_button('removeAccount', match: :first)
end
