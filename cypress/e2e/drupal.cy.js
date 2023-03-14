describe('Site initialised', () => {
  beforeEach(function () {
    // "this" points at the test context object
    cy.fixture('user').then((user) => {
      // "this" is still the test context object
      this.user = user
    })
  })

  // the test callback is in "function () { ... }" form
  it('A user can login to the site', function () {
    // this.user exists
    cy.drupalLogin(this.user.username, this.user.password)
  })
})
