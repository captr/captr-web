describe CaptrWeb.Authentication, ->
  it 'signs in a user if authentication was successful', (done) ->
    provider = new TestIdentityProvider(successful: true)
    authentication = new CaptrWeb.Authentication(provider)
    authentication.logIn().done ->
      expect(authentication.currentUser).to.eq provider.testUser()
      done()

  it 'fails sign in if authentication was not successful', (done) ->
    provider = new TestIdentityProvider(successful: false)
    authentication = new CaptrWeb.Authentication(provider)
    authentication.logIn().fail ->
      expect(authentication.currentUser).to.be.null
      done()
