=begin
#Webhooks API

#This is the Swagger definition for the AssemblyPayment's Webhooks API

The version of the OpenAPI document: 1.0-external
Contact: support@assemblypayments.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'cgi'

module AssemblyRubyWebhooks
  class WebhooksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Webhook
    # Create a **Webhook** to notify you at the `URL` when the `object_type` changes
    # @param webhook_params [WebhookParams] 
    # @param [Hash] opts the optional parameters
    # @return [Webhook]
    def create_webhook(webhook_params, opts = {})
      data, _status_code, _headers = create_webhook_with_http_info(webhook_params, opts)
      data
    end

    # Create a Webhook
    # Create a **Webhook** to notify you at the &#x60;URL&#x60; when the &#x60;object_type&#x60; changes
    # @param webhook_params [WebhookParams] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Webhook, Integer, Hash)>] Webhook data, response status code and response headers
    def create_webhook_with_http_info(webhook_params, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.create_webhook ...'
      end
      # verify the required parameter 'webhook_params' is set
      if @api_client.config.client_side_validation && webhook_params.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_params' when calling WebhooksApi.create_webhook"
      end
      # resource path
      local_var_path = '/webhooks'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(webhook_params)

      # return_type
      return_type = opts[:debug_return_type] || 'Webhook'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.create_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#create_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Webhook by ID
    # Delete an existing Webhook using a given `:id`.
    # @param uuid [String] ID of webhook to delete
    # @param [Hash] opts the optional parameters
    # @return [APIResponse]
    def delete_webhook_by_id(uuid, opts = {})
      data, _status_code, _headers = delete_webhook_by_id_with_http_info(uuid, opts)
      data
    end

    # Delete Webhook by ID
    # Delete an existing Webhook using a given &#x60;:id&#x60;.
    # @param uuid [String] ID of webhook to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIResponse, Integer, Hash)>] APIResponse data, response status code and response headers
    def delete_webhook_by_id_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.delete_webhook_by_id ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling WebhooksApi.delete_webhook_by_id"
      end
      # resource path
      local_var_path = '/webhooks/{uuid}'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'APIResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.delete_webhook_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#delete_webhook_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Webhooks
    # Returns the webhooks associated
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of records to retrieve. Up to 200. (default to 10)
    # @option opts [Integer] :offset Number of records to offset. Required for pagination. (default to 0)
    # @return [Webhooks]
    def get_all_webhooks(opts = {})
      data, _status_code, _headers = get_all_webhooks_with_http_info(opts)
      data
    end

    # List Webhooks
    # Returns the webhooks associated
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of records to retrieve. Up to 200.
    # @option opts [Integer] :offset Number of records to offset. Required for pagination.
    # @return [Array<(Webhooks, Integer, Hash)>] Webhooks data, response status code and response headers
    def get_all_webhooks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.get_all_webhooks ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 200
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling WebhooksApi.get_all_webhooks, must be smaller than or equal to 200.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling WebhooksApi.get_all_webhooks, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling WebhooksApi.get_all_webhooks, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/webhooks'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Webhooks'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.get_all_webhooks",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#get_all_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Webhook
    # Show details of a specific **Webhook** using a given `:uuid`.
    # @param uuid [String] Webhook UUID
    # @param [Hash] opts the optional parameters
    # @return [Webhook]
    def get_webhook_by_id(uuid, opts = {})
      data, _status_code, _headers = get_webhook_by_id_with_http_info(uuid, opts)
      data
    end

    # Show Webhook
    # Show details of a specific **Webhook** using a given &#x60;:uuid&#x60;.
    # @param uuid [String] Webhook UUID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Webhook, Integer, Hash)>] Webhook data, response status code and response headers
    def get_webhook_by_id_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.get_webhook_by_id ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling WebhooksApi.get_webhook_by_id"
      end
      # resource path
      local_var_path = '/webhooks/{uuid}'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Webhook'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.get_webhook_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#get_webhook_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing Webhook
    # Update an existing **Webhook** using a given `:id`. You can change the `URL`, the `description` and whether the **Webhook** is `enabled` or `disabled`. 
    # @param uuid [String] UUID of webhook to update
    # @param webhook_patch_params [WebhookPatchParams] 
    # @param [Hash] opts the optional parameters
    # @return [Webhook]
    def update_webhook(uuid, webhook_patch_params, opts = {})
      data, _status_code, _headers = update_webhook_with_http_info(uuid, webhook_patch_params, opts)
      data
    end

    # Update an existing Webhook
    # Update an existing **Webhook** using a given &#x60;:id&#x60;. You can change the &#x60;URL&#x60;, the &#x60;description&#x60; and whether the **Webhook** is &#x60;enabled&#x60; or &#x60;disabled&#x60;. 
    # @param uuid [String] UUID of webhook to update
    # @param webhook_patch_params [WebhookPatchParams] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Webhook, Integer, Hash)>] Webhook data, response status code and response headers
    def update_webhook_with_http_info(uuid, webhook_patch_params, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.update_webhook ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling WebhooksApi.update_webhook"
      end
      # verify the required parameter 'webhook_patch_params' is set
      if @api_client.config.client_side_validation && webhook_patch_params.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_patch_params' when calling WebhooksApi.update_webhook"
      end
      # resource path
      local_var_path = '/webhooks/{uuid}'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(webhook_patch_params)

      # return_type
      return_type = opts[:debug_return_type] || 'Webhook'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.update_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#update_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
