CaptrWeb.Authentication = class Authentication
  constructor: (identityProvider) ->
    @identityProvider = identityProvider
    @authPromise = jQuery.Deferred()
    @currentUser = null

  logIn: ->
    parent = @
    @identityProvider.identifyUser()
                     .done((user) -> successfulLogin(parent, user))
                     .fail(-> failedLogin(parent))

    return @authPromise

  currentUser: ->
    return @currentUser

  successfulLogin = (parent, user) ->
    parent.currentUser = user
    parent.authPromise.resolve()

  failedLogin = (parent) ->
    parent.authPromise.reject()
