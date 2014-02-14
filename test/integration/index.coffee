# describe "Index page", ->
#     it "displays a welcome message", ->
#         visit('/').then ->
#             find('body').text().should.contain 'minimal'

# describe "ApplicationRoute", ->
#     describe "model property", ->
#         applicationRoute = CaptrWeb.ApplicationRoute.create()

#         it "should have the right number of items", ->
#             model = applicationRoute.model()
#             model.should.have.length 3
