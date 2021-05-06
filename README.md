## A NEW RAILS DEVELOPER

James is back again at Le Wagon.
He experience how wonderful it is to code to back up all that
he has done thus far. Writing documentation now seems redundant
and he can write more code!

James tech lead now comes with a new feature to accomplish.
Being an eager beaver, James fell back to his old mistakes to
code rightaway without writing any new tests and running the existing tests created.

You are James Tech Lead, and your job is to fix his code as
soon as possible. The app needs to go live!

You need to fix the following specs in the data model

[ ] A Tag:
... has a name

[ ] A PlantTag:
... connect one plant and one tag
... must be uniquely associate plant and tag

i.e. a different plant can have a same tag, vice versa

[X] A Garden:
...has a name
...has an image_url
...has many plant

[X] A Plant:
...belongs to a garden
...has a name
...has an image_url
...is only valid when it has a name AND
...is only valid when it has an image url

And also some additional stories

[X] As a user I can see one garden's plants
[X] As a user I can add a plant in a garden
[ ] As a user I can tag a plant with a _valid_ multiple categories
[ ] As a user I can view all tags associated with a plant

The good news is that the tests are written already.
If you pass the tests, the code should be good enough!

[ ] - 1. Create new migrations needed for the user stories
[ ] - 2. Fix the tag model file
[ ] - 3. No new page to tag plants, everything is done on plant page
[ ] - 4. given the user stories, fix the controllers
[ ] - 5. given the user stories, fix the views
[ ] - (STRETCH GOAL) - Use [select2](https://select2.org/getting-started/basic-usage#multi-select-boxes-pillbox) to choose tag easily
[ ] - (STRETCH GOAL 2) - Provide an interactive feature to toggle the new plant form display
