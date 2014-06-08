KEY POINTS
===

- Never build beyond the application requirements at the time you are writing the code.
- If you do not have concrete requirements, don’t write any code.
- Don’t jump to a model prematurely; there are often simple ways, such as using Booleans and denormalization, to avoid using adding additional models.
- If there is no user interface for adding, removing, or managing data, there is no need for a model. A denormalized column populated by a hash or array of possi- ble values is fine.


NOTES by Chapter
===

1. Model
- Use your callbacks (e.g. before_create, after_save, etc)
- Use your scopes & string them together
- Research & use delegate_to
- Research & use composed_of
- COMPOSITION VS INHERITANCE
  - Put logic into separate classes OR modules; DONT MAKE FAT MODELS
- Place complex queries into your model NOT controller
- Stay DRY

2. Domain Modeling
- define_method <= check into this
- serialize <= check into this

3. View
- Semantic markup is king (separate content & presentation in HTML)
- Use your helpers
- Use HAML

4. Controller
- Never roll your own authentication
- REST, REST, REST
- Separate nonRESTFUL actions into a separate controller (e.g. Dashboard)
- Use complete integration testing before refactoring a bloated controller
- Use separate controllers for each nesting; not completely dry but reduces lots of if/then logic

5. Services
- Don't rescue all exceptions, locate which exceptions can be raised by the service you're using
- Use error logging services like New Relic, Exceptional, Airbrake
- For slow services, set timeouts to less than the default 60sec and/or move jobs into background task
- Use Mechanize or Nokogiri to parse html pages from remote systems w/o an API
- When interfacing with a RESTful remote system, use RestClient to perform multiple GET & POST actions
- When creating a RESTful API, return HTTP status codes NOT errors that must be parsed in response body
- Communicate status clearly by using HTTP status codes, USE THEM!
- In large applications consider splitting some functions into separate apps (blog, time-tracker, calendar)
  - Don't connect your apps via HTTP. If one has a problem; all will come a grinding halt
  - Use queues & buffers. Each app puts a task in a queue for a worker to complete later on the other app

6. Third Party Code
- Look for a gem first; identify if there is an existing gem that provides the functionality you need
- Once you find a GEM, check for the following before using:
  - Tests - w/o tests there is little guarantee that the gem works
  - Activity - is it being actively used by the community
  - Maturity - has it been around for a long time & does it have lots of users
- Actively removed irrelevant or unused gems
- NEVER modify a gem's files from within your applications _vendor_ dir
  - Monkey patch changes you want to make to a gem by modifying or extending code w/o modifying the original source code.
    - Overwrite from your _lib_ folder (see page 218 for details)
  - Fork & submit your patches back to the original author as GH pull request
    - Maintain a separate git repo that tracks your changes (gem 'gemname', :git=> "github/user/gem.git")

7. Testing
- USE Shoulda & FactoryGirl
- USE factories NOT fixtures
- NOTE: FactoryGirl has association method that creates accompanying model (see page 227)
- Use 'contexts' to group & build setup code.
- DON'T have redundant setup codes thats copied & pasted between test methods
- REMINDER: "One assertion per test";
- REMINDER: Use Contexts & Factories for DRY tests!!!
- Good test suites that use lots of mocking must be driven by integration tests that use NO mocking
  - Use Cucumber (see page 239)
    - Write a user story that describe the feature
    - Develop enough of controller to make story pass, write tests that mock out models
    - Develop enough of models to make story pass, do unit tests that mock interactions w/ other models
- Consider stubs instead of creating lots of records ( e.g. 3.times {:create} ) for a test
- ...Page 244

...