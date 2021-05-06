A NEW RAILS DEVELOPER
---------------------

James is a seasoned Java developer who just got hired at Le Wagon.
Le Wagon, being a Rails company, gave James a couple of easy user stories
for a plant app that is being built for their alumni.

James is not used to Agile development. Instead of running the tests
and work through the code bit by bit, he blazed through the rails
documentation and wrote a bunch of code without testing it.

Now, everything is terribly broken and the specs are far away
from passing.

You are James Tech Lead, and your job is to fix his code as
soon as possible. The app needs to go live!


You need to fix the following specs in the data model

  [ ] - A Garden:
      ...has a name
      ...has an image_url
      ...has many plant

  [ ] - A Plant:
    ...belongs to a garden
    ...has a name
    ...has an image_url
    ...is only valid when it has a name AND
    ...is only valid when it has an image url

And also the following stories

[ ] - As a user I can see one garden's plants
[ ] - As a user I can add a plant in a garden

The good news is that the tests are written already.
If you pass the tests, the code should be good enough!


[X] - 1. Fix the migration files
[X] - 2. Fix the model files
[X] - 3. given the user stories, fix the route file

[X] - 4. given the user stories, fix the controllers
[X] - 5. given the user stories, fix the views


