Given(/^abro la pagina$/) do
  visit '/'
end

Then(/^dice "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

