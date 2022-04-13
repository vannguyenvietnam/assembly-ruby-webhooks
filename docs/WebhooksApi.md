# AssemblyRubyWebhooks::WebhooksApi

All URIs are relative to *https://sandbox.au-0000.api.assemblypay.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook**](WebhooksApi.md#create_webhook) | **POST** /webhooks | Create a Webhook |
| [**delete_webhook_by_id**](WebhooksApi.md#delete_webhook_by_id) | **DELETE** /webhooks/{uuid} | Delete Webhook by ID |
| [**get_all_webhooks**](WebhooksApi.md#get_all_webhooks) | **GET** /webhooks | List Webhooks |
| [**get_webhook_by_id**](WebhooksApi.md#get_webhook_by_id) | **GET** /webhooks/{uuid} | Show Webhook |
| [**update_webhook**](WebhooksApi.md#update_webhook) | **PATCH** /webhooks/{uuid} | Update an existing Webhook |


## create_webhook

> <Webhook> create_webhook(webhook_params)

Create a Webhook

Create a **Webhook** to notify you at the `URL` when the `object_type` changes

### Examples

```ruby
require 'time'
require 'assembly_ruby_webhooks'
# setup authorization
AssemblyRubyWebhooks.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = AssemblyRubyWebhooks::WebhooksApi.new
webhook_params = AssemblyRubyWebhooks::WebhookParams.new({url: 'https://httpbin.org', object_type: 'batch_transactions'}) # WebhookParams | 

begin
  # Create a Webhook
  result = api_instance.create_webhook(webhook_params)
  p result
rescue AssemblyRubyWebhooks::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook: #{e}"
end
```

#### Using the create_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> create_webhook_with_http_info(webhook_params)

```ruby
begin
  # Create a Webhook
  data, status_code, headers = api_instance.create_webhook_with_http_info(webhook_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue AssemblyRubyWebhooks::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_params** | [**WebhookParams**](WebhookParams.md) |  |  |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_webhook_by_id

> <APIResponse> delete_webhook_by_id(uuid)

Delete Webhook by ID

Delete an existing Webhook using a given `:id`.

### Examples

```ruby
require 'time'
require 'assembly_ruby_webhooks'
# setup authorization
AssemblyRubyWebhooks.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = AssemblyRubyWebhooks::WebhooksApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID of webhook to delete

begin
  # Delete Webhook by ID
  result = api_instance.delete_webhook_by_id(uuid)
  p result
rescue AssemblyRubyWebhooks::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook_by_id: #{e}"
end
```

#### Using the delete_webhook_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> delete_webhook_by_id_with_http_info(uuid)

```ruby
begin
  # Delete Webhook by ID
  data, status_code, headers = api_instance.delete_webhook_by_id_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue AssemblyRubyWebhooks::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | ID of webhook to delete |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_webhooks

> <Webhooks> get_all_webhooks(opts)

List Webhooks

Returns the webhooks associated

### Examples

```ruby
require 'time'
require 'assembly_ruby_webhooks'
# setup authorization
AssemblyRubyWebhooks.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = AssemblyRubyWebhooks::WebhooksApi.new
opts = {
  limit: 56, # Integer | Number of records to retrieve. Up to 200.
  offset: 56 # Integer | Number of records to offset. Required for pagination.
}

begin
  # List Webhooks
  result = api_instance.get_all_webhooks(opts)
  p result
rescue AssemblyRubyWebhooks::ApiError => e
  puts "Error when calling WebhooksApi->get_all_webhooks: #{e}"
end
```

#### Using the get_all_webhooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhooks>, Integer, Hash)> get_all_webhooks_with_http_info(opts)

```ruby
begin
  # List Webhooks
  data, status_code, headers = api_instance.get_all_webhooks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhooks>
rescue AssemblyRubyWebhooks::ApiError => e
  puts "Error when calling WebhooksApi->get_all_webhooks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of records to retrieve. Up to 200. | [optional][default to 10] |
| **offset** | **Integer** | Number of records to offset. Required for pagination. | [optional][default to 0] |

### Return type

[**Webhooks**](Webhooks.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhook_by_id

> <Webhook> get_webhook_by_id(uuid)

Show Webhook

Show details of a specific **Webhook** using a given `:uuid`.

### Examples

```ruby
require 'time'
require 'assembly_ruby_webhooks'
# setup authorization
AssemblyRubyWebhooks.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = AssemblyRubyWebhooks::WebhooksApi.new
uuid = '088e4cf1-2508-4bd4-97ab-a78e4e869970' # String | Webhook UUID

begin
  # Show Webhook
  result = api_instance.get_webhook_by_id(uuid)
  p result
rescue AssemblyRubyWebhooks::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook_by_id: #{e}"
end
```

#### Using the get_webhook_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> get_webhook_by_id_with_http_info(uuid)

```ruby
begin
  # Show Webhook
  data, status_code, headers = api_instance.get_webhook_by_id_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue AssemblyRubyWebhooks::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | Webhook UUID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;] |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_webhook

> <Webhook> update_webhook(uuid, webhook_patch_params)

Update an existing Webhook

Update an existing **Webhook** using a given `:id`. You can change the `URL`, the `description` and whether the **Webhook** is `enabled` or `disabled`. 

### Examples

```ruby
require 'time'
require 'assembly_ruby_webhooks'
# setup authorization
AssemblyRubyWebhooks.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = AssemblyRubyWebhooks::WebhooksApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | UUID of webhook to update
webhook_patch_params = AssemblyRubyWebhooks::WebhookPatchParams.new # WebhookPatchParams | 

begin
  # Update an existing Webhook
  result = api_instance.update_webhook(uuid, webhook_patch_params)
  p result
rescue AssemblyRubyWebhooks::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook: #{e}"
end
```

#### Using the update_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> update_webhook_with_http_info(uuid, webhook_patch_params)

```ruby
begin
  # Update an existing Webhook
  data, status_code, headers = api_instance.update_webhook_with_http_info(uuid, webhook_patch_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue AssemblyRubyWebhooks::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | UUID of webhook to update |  |
| **webhook_patch_params** | [**WebhookPatchParams**](WebhookPatchParams.md) |  |  |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

