I'm dumb and forget a lot so here is a reference task for good open tofu hygeine..


# UDS tofu test tasks
Eventually I'd like these test to be called locally in our reference tasks for doing tofu things locally and in CI. Potentially setting up a precommit hook that could call our actual tofu tasks to make sure in a dummy scenario when the null provider is deploying a fake resource that our tasks can successfully.

1. tofu init
2. tofu validate
3. tofu plan (which outputs the plan)
4. tofu apply (which applies the output of the plan) would be a manual action in say a Gitlab CI job I think. 

I tried a few different ways to see what looked best for a ref design.
## Implementations

### Version A
The cheeky you probably shouldn't set dynamic variables this way but it works.
- `uds run test-prod-tofu-tasks-A`

### Version B
Pass in your `ENVIRONMENT_NAME` via the `--set` flag
- `uds run test-prod-tofu-tasks-B --set ENVIRONMENT_NAME=prod`

### Version C
Setting up .env files for a specific env
- `uds run test-prod-tofu-tasks-C`

### Version D
Using prepending `MARU_`env_name. I couldnt get this to work :/

### Version E
Duplicate code and have specific directories for an ENV that have base copied tasks.yaml files :gross:

