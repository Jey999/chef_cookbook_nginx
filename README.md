# node_4

Install nginx test 1
test3
TODO: Enter the cookbook description here.


# node

TODO: Enter the cookbook description here.

# Chef - A configuration management tool

## Recipes

A recipe is a provisioning script - written in pure RUBY with it's own methods. Making it a domain specific language (DSL).

This lives in the recipe folder

### Cookbooks
Hold many Recipes
##kitchen.yml

### Test kitchen

- create an env. for testing the cookbook
- runs the chef code against the environment to provision it
- run unit tests(tests the code) and integration test suites to ensure the environment is correct/standardised (test the environment)
- closes everything down

### commands to use chef and kitchen
$ Kitchen create (creates a virtual machine)

#provision and bring
$ kitchen converge ( Run your recipe/provision)

# setup kitchen to run test
$kitchen setup

#this will run tests on newly created environment
$ kitchen verify

# This will destory the kitchen
$kitchen destory

#### creating, converge, setup, verify and destory: #ccsvd
$kitchen test
