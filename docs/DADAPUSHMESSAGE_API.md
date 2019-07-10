# DADAPUSHMESSAGE_API

All URIs are relative to *https://www.dadapush.com*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**create_message**](DADAPUSHMESSAGE_API.md#create_message) | **Post** /api/v1/message | push Message to a Channel
[**delete_message**](DADAPUSHMESSAGE_API.md#delete_message) | **Delete** /api/v1/message/{messageId} | delete a Channel Message
[**message**](DADAPUSHMESSAGE_API.md#message) | **Get** /api/v1/message/{messageId} | get a Channel Message
[**messages**](DADAPUSHMESSAGE_API.md#messages) | **Get** /api/v1/messages | get Message List


# **create_message**
> create_message (body: MESSAGE_PUSH_REQUEST ; x_channel_token:  detachable STRING_32 ): detachable RESULT_OF_MESSAGE_PUSH_RESPONSE
	

push Message to a Channel

<h2>Rate Limit:</h2><ul><li>1 request per 1s</li><li>30 request per 1m</li><li>500 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MESSAGE_PUSH_REQUEST**](MESSAGE_PUSH_REQUEST.md)| body | 
 **x_channel_token** | **STRING_32**| see: https://www.dadapush.com/channel/list | [optional] [default to null]

### Return type

[**RESULT_OF_MESSAGE_PUSH_RESPONSE**](resultOfMessagePushResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_message**
> delete_message (message_id: INTEGER_64 ; x_channel_token:  detachable STRING_32 ): detachable MODEL_RESULT
	

delete a Channel Message

<h2>Rate Limit:</h2><ul><li>10 request per 1s</li><li>100 request per 1m</li><li>1000 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **INTEGER_64**| messageId | [default to null]
 **x_channel_token** | **STRING_32**| see: https://www.dadapush.com/channel/list | [optional] [default to null]

### Return type

[**MODEL_RESULT**](result.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **message**
> message (message_id: INTEGER_64 ; x_channel_token:  detachable STRING_32 ): detachable RESULT_OF_MESSAGE_OBJECT
	

get a Channel Message

<h2>Rate Limit:</h2><ul><li>10 request per 1s</li><li>100 request per 1m</li><li>1000 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **INTEGER_64**| messageId | [default to null]
 **x_channel_token** | **STRING_32**| see: https://www.dadapush.com/channel/list | [optional] [default to null]

### Return type

[**RESULT_OF_MESSAGE_OBJECT**](resultOfMessageObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **messages**
> messages (page: INTEGER_32 ; page_size: INTEGER_32 ; x_channel_token:  detachable STRING_32 ): detachable RESULT_OF_PAGE_RESPONSE_OF_MESSAGE_OBJECT
	

get Message List

<h2>Rate Limit:</h2><ul><li>1 request per 1s</li><li>45 request per 1m</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **INTEGER_32**| greater than 1 | [default to 1]
 **page_size** | **INTEGER_32**| range is 1,50 | [default to 10]
 **x_channel_token** | **STRING_32**| see: https://www.dadapush.com/channel/list | [optional] [default to null]

### Return type

[**RESULT_OF_PAGE_RESPONSE_OF_MESSAGE_OBJECT**](resultOfPageResponseOfMessageObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

