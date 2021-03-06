=begin
#Webhooks API

#This is the Swagger definition for the AssemblyPayment's Webhooks API

The version of the OpenAPI document: 1.0-external
Contact: support@assemblypayments.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for AssemblyRubyWebhooks::WebhooksSecretKeyApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WebhooksSecretKeyApi' do
  before do
    # run before each test
    @api_instance = AssemblyRubyWebhooks::WebhooksSecretKeyApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WebhooksSecretKeyApi' do
    it 'should create an instance of WebhooksSecretKeyApi' do
      expect(@api_instance).to be_instance_of(AssemblyRubyWebhooks::WebhooksSecretKeyApi)
    end
  end

  # unit tests for create_webhook_secret_key
  # Create a Webhooks secret_key
  # Create a **Webhooks secret_key**
  # @param webhook_secret_key_params 
  # @param [Hash] opts the optional parameters
  # @return [APIResponse]
  describe 'create_webhook_secret_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
