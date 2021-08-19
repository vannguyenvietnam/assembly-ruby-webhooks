# AssemblyRubyWebhooks::WebhookParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | URL to which the webhook will notify | [default to &#39;https://httpbin.org&#39;] |
| **object_type** | **String** | Object or entity to which the webhook refer. Please refer to [Webhook](https://developer.assemblypayments.com/docs/webhooks) for a list of object types. |  |
| **description** | **String** | Description to identify the webhook | [optional][default to &#39;Batch Transactions Webhook&#39;] |

## Example

```ruby
require 'assembly_ruby_webhooks'

instance = AssemblyRubyWebhooks::WebhookParams.new(
  url: https://httpbin.org,
  object_type: batch_transactions,
  description: Sample Batch Transaction Webhook
)
```

