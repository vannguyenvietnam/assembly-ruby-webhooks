# AssemblyRubyWebhooks::Job

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hashed_payload** | **String** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **payload** | [**JobPayload**](JobPayload.md) |  | [optional] |
| **webhook_uuid** | **String** |  | [optional] |
| **uuid** | **String** |  | [optional] |
| **request_responses** | [**RequestResponses**](RequestResponses.md) |  | [optional] |

## Example

```ruby
require 'assembly_ruby_webhooks'

instance = AssemblyRubyWebhooks::Job.new(
  hashed_payload: null,
  updated_at: null,
  created_at: null,
  payload: null,
  webhook_uuid: null,
  uuid: null,
  request_responses: null
)
```

