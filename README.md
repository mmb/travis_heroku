This gem makes it easier to trigger Heroku deploys from successful Travis
builds.

To use:

Add this gem as a development dependency to your app.

Install the travis gem and the Heroku Toolbelt locally.

Add an encrypted environment variable with your Heroku API key to your
.travis.yml file by running:

```bash
travis encrypt HEROKU_API_KEY=`heroku auth:token` --add
```

Set a HEROKU_APP environment variable in your .travis.yml file to your
Heroku app name:

```yaml
env:
  global:
  - HEROKU_APP=mcalpha
```
 
Add an after_success script to your .travis.yml file:

```yaml
after_success:
  - travis-heroku
```

After deployment, the following Heroku config variables will be set:

* DEPLOYED_SHA - the SHA of the git commit that was deployed
* DEPLOYED_TIME - the time of deployment

These are accessible in the application as environment variables.
