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
- Don't rescue all exceptions
...