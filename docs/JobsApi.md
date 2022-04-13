# AssemblyRubyWebhooks::JobsApi

All URIs are relative to *https://sandbox.au-0000.api.assemblypay.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_job**](JobsApi.md#get_job) | **GET** /webhooks/{uuid}/jobs/{jobUUID} | Show job associated to Webhook |
| [**get_jobs**](JobsApi.md#get_jobs) | **GET** /webhooks/{uuid}/jobs | Get jobs associated to Webhook |


## get_job

> <Job> get_job(uuid, job_uuid)

Show job associated to Webhook

Show details of a specific **Job** response using a given `:id`.

### Examples

```ruby
require 'time'
require 'assembly_ruby_webhooks'
# setup authorization
AssemblyRubyWebhooks.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = AssemblyRubyWebhooks::JobsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID of webhook
job_uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID of Job

begin
  # Show job associated to Webhook
  result = api_instance.get_job(uuid, job_uuid)
  p result
rescue AssemblyRubyWebhooks::ApiError => e
  puts "Error when calling JobsApi->get_job: #{e}"
end
```

#### Using the get_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Job>, Integer, Hash)> get_job_with_http_info(uuid, job_uuid)

```ruby
begin
  # Show job associated to Webhook
  data, status_code, headers = api_instance.get_job_with_http_info(uuid, job_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Job>
rescue AssemblyRubyWebhooks::ApiError => e
  puts "Error when calling JobsApi->get_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | ID of webhook |  |
| **job_uuid** | **String** | ID of Job |  |

### Return type

[**Job**](Job.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_jobs

> <Jobs> get_jobs(uuid, opts)

Get jobs associated to Webhook

Retrieve an ordered and paginated list of the jobs garnered from a webhook using a given `:id`.

### Examples

```ruby
require 'time'
require 'assembly_ruby_webhooks'
# setup authorization
AssemblyRubyWebhooks.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = AssemblyRubyWebhooks::JobsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID of webhook
opts = {
  limit: 56, # Integer | Number of records to retrieve. Up to 200.
  offset: 56, # Integer | Number of records to offset. Required for pagination.
  status: 'success' # String | Narrow down records per status
}

begin
  # Get jobs associated to Webhook
  result = api_instance.get_jobs(uuid, opts)
  p result
rescue AssemblyRubyWebhooks::ApiError => e
  puts "Error when calling JobsApi->get_jobs: #{e}"
end
```

#### Using the get_jobs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Jobs>, Integer, Hash)> get_jobs_with_http_info(uuid, opts)

```ruby
begin
  # Get jobs associated to Webhook
  data, status_code, headers = api_instance.get_jobs_with_http_info(uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Jobs>
rescue AssemblyRubyWebhooks::ApiError => e
  puts "Error when calling JobsApi->get_jobs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | ID of webhook |  |
| **limit** | **Integer** | Number of records to retrieve. Up to 200. | [optional][default to 10] |
| **offset** | **Integer** | Number of records to offset. Required for pagination. | [optional][default to 0] |
| **status** | **String** | Narrow down records per status | [optional][default to &#39;&#39;] |

### Return type

[**Jobs**](Jobs.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

