Feature: Rest API
  In order to test various Rest APIs
  As a tester
  I want to test basic functionality and XML data verification

@get
Scenario Outline: GET Method for Host
Given the Rest API is to be tested
When the client sends GET for Host "<URL>" 
 Examples:
    |  URL | 
    | https://abc/api | 
	
@put
Scenario Outline: Put Method for Host 
When the client sends PUT for Host "<URL>" 
 Examples:
    |  URL | 
	|https://abc/api

@post
Scenario Outline: Post Method for Host 
When the client sends POST for Host "<URL>" 
 Examples:
    |  URL | 
  |https://abc/api
