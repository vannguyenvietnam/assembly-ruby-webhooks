# AssemblyRubyWebhooks::StatusApi

All URIs are relative to *https://sandbox.au-0000.api.assemblypay.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_status**](StatusApi.md#get_status) | **GET** /status | Check health of server |


## get_status

> <InlineResponse200> get_status

Check health of server

returns healthy if server is running fine

### Examples

```ruby
require 'time'
require 'assembly_ruby_webhooks'
# setup authorization
AssemblyRubyWebhooks.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = AssemblyRubyWebhooks::StatusApi.new

begin
  # Check health of server
  result = api_instance.get_status
  p result
rescue AssemblyRubyWebhooks::ApiError => e
  puts "Error when calling StatusApi->get_status: #{e}"
end
```

#### Using the get_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse200>, Integer, Hash)> get_status_with_http_info

```ruby
begin
  # Check health of server
  data, status_code, headers = api_instance.get_status_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse200>
rescue AssemblyRubyWebhooks::ApiError => e
  puts "Error when calling StatusApi->get_status_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

