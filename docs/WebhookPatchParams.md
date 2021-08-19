# AssemblyRubyWebhooks::WebhookPatchParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** |  | [optional] |
| **url** | **String** |  | [optional] |
| **description** | **String** |  | [optional][default to &#39;Users Webhook&#39;] |

## Example

```ruby
require 'assembly_ruby_webhooks'

instance = AssemblyRubyWebhooks::WebhookPatchParams.new(
  enabled: false,
  url: https://httpbin.org,
  description: Sample Users Webhook
)
```

