# AssemblyRubyWebhooks::Webhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** |  | [optional] |
| **object_type** | **String** |  | [optional] |
| **http_method** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **enabled** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **links** | [**WebhookLinks**](WebhookLinks.md) |  | [optional] |

## Example

```ruby
require 'assembly_ruby_webhooks'

instance = AssemblyRubyWebhooks::Webhook.new(
  uuid: null,
  object_type: null,
  http_method: null,
  url: null,
  description: null,
  enabled: null,
  created_at: null,
  updated_at: null,
  links: null
)
```

