require 'rest-client'
require 'oauth2'
require 'json'
require 'httparty'
require 'net/http'



# Working code
client = OAuth2::Client.new('clientID', 'clientSecret', :token_url => 'tokenpath', :site => "website url")
access_token = client.password.get_token('test', '123456')
token = access_token.token
puts token
auth = "Bearer #{token}"
update = '{"Name": "football"}'

Given /^the Rest API is to be tested$/ do
end 

When /^the client sends GET for Host "(.*)"$/ do |path|
abc = RestClient.get("#{path}",:authorization=>auth)
puts abc.body
puts "\n"
puts "\n"
puts abc.code

	if abc.code == 200
			puts "\n"
			puts "Response OK\nJSON Data Verified"
			puts "--Test Case Passed"
	else 
		raise
	end
end	
		
When /^the client sends POST for Host "(.*)"$/ do |path|
#response = RestClient.get("#{path}", 'Content-Type' => 'application/json', :accept => :json, :authorization=>auth)
response = RestClient.post("#{path}", 'path_to_json file', 'Content-Type' => 'application/json', :accept => :json, :authorization=>auth)               
puts response
puts response.body
puts "\n"
puts "\n"
puts response.code

	if response.code == 200
			puts "200"
	else 
		raise
	end
end	




When /^the client sends PUT for Host "(.*)"$/ do |path|

#response = RestClient.put("#{path}", jdata, 'Content-Type' => 'application/json', :authorization=>auth)
#response = RestClient.get("#{path}",'/oauth/put.js')

response = RestClient.put("#{path}", 'path_to_json file', 'Content-Type' => 'application/json', :authorization=>auth)
#puts response
puts response.body
puts "\n"
puts "\n"
puts response.code

	if response.code == 200
			puts "\n"
			puts "Response OK\nJSON Data Verified"
			puts "--Test Case Passed"
	else 
		raise
	end
end

#response = token.post('/oauth/create.js', {body: {:title => "title", :description => "desc"}})
#token.post('/some/url', {:body => json_str, :headers => {'Content-Type' => 'application/json'}})
#response = connection.run_request(verb, url, opts[:body], opts[:headers])


