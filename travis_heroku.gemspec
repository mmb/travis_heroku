Gem::Specification.new do |s|
  s.name = 'travis_heroku'
  s.version = '0.0.4'
  s.summary = 'Easily trigger Heroku deploys from Travis builds.'
  s.description = s.summary
  s.homepage = 'https://github.com/mmb/travis-heroku'
  s.authors = ['Matthew M. Boedicker']
  s.email = %w{matthewm@boedicker.org}

  s.add_dependency 'heroku-api'

  s.files = `git ls-files`.split("\n")
  s.executables = %w{travis-heroku}
end
