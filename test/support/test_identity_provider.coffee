class TestIdentityProvider
  constructor: (keys) ->
    @successful = keys.successful
    @user = new Object

  identifyUser: ->
    deferred = jQuery.Deferred()
    if @successful
      deferred.resolve(@user)
    else
      deferred.reject()

    return deferred

  testUser: ->
    return @user
