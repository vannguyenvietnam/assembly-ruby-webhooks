# AssemblyRubyWebhooks::WebhooksSecretKeyApi

All URIs are relative to *https://sandbox.au-0000.api.assemblypay.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook_secret_key**](WebhooksSecretKeyApi.md#create_webhook_secret_key) | **POST** /webhooks/secret_key | Create a Webhooks secret_key |


## create_webhook_secret_key

> <APIResponse> create_webhook_secret_key(webhook_secret_key_params)

Create a Webhooks secret_key

Create a **Webhooks secret_key**

### Examples

```ruby
require 'time'
require 'assembly_ruby_webhooks'
# setup authorization
AssemblyRubyWebhooks.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = AssemblyRubyWebhooks::WebhooksSecretKeyApi.new
webhook_secret_key_params = AssemblyRubyWebhooks::WebhookSecretKeyParams.new # WebhookSecretKeyParams | 

begin
  # Create a Webhooks secret_key
  result = api_instance.create_webhook_secret_key(webhook_secret_key_params)
  p result
rescue AssemblyRubyWebhooks::ApiError => e
  puts "Error when calling WebhooksSecretKeyApi->create_webhook_secret_key: #{e}"
end
```

#### Using the create_webhook_secret_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> create_webhook_secret_key_with_http_info(webhook_secret_key_params)

```ruby
begin
  # Create a Webhooks secret_key
  data, status_code, headers = api_instance.create_webhook_secret_key_with_http_info(webhook_secret_key_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue AssemblyRubyWebhooks::ApiError => e
  puts "Error when calling WebhooksSecretKeyApi->create_webhook_secret_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_secret_key_params** | [**WebhookSecretKeyParams**](WebhookSecretKeyParams.md) |  |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

