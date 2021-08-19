=begin
#Webhooks API

#This is the Swagger definition for the AssemblyPayment's Webhooks API

The version of the OpenAPI document: 1.0-external
Contact: support@assemblypayments.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.0

=end

# Common files
require 'assembly_ruby_webhooks/api_client'
require 'assembly_ruby_webhooks/api_error'
require 'assembly_ruby_webhooks/version'
require 'assembly_ruby_webhooks/configuration'

# Models
require 'assembly_ruby_webhooks/models/api_response'
require 'assembly_ruby_webhooks/models/inline_response200'
require 'assembly_ruby_webhooks/models/job'
require 'assembly_ruby_webhooks/models/job_payload'
require 'assembly_ruby_webhooks/models/jobs'
require 'assembly_ruby_webhooks/models/request_responses'
require 'assembly_ruby_webhooks/models/webhook'
require 'assembly_ruby_webhooks/models/webhook_links'
require 'assembly_ruby_webhooks/models/webhook_params'
require 'assembly_ruby_webhooks/models/webhook_patch_params'
require 'assembly_ruby_webhooks/models/webhooks'
require 'assembly_ruby_webhooks/models/webhooks_meta'

# APIs
require 'assembly_ruby_webhooks/api/jobs_api'
require 'assembly_ruby_webhooks/api/status_api'
require 'assembly_ruby_webhooks/api/webhooks_api'

module AssemblyRubyWebhooks
  class << self
    # Customize default settings for the SDK using block.
    #   AssemblyRubyWebhooks.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
