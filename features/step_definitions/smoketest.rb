Given(/^I am checking out many pages$/) do
  g = "https://dev.mokapos.com"
  l = "https://www.livingsocial.com"
  t = "https://www.tumblr.com"
  [g,l,t].each do |site|
    visit site
    sleep 2
  end
end
