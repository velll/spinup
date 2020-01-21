module Spinup
  module Config
    DEFAULT_DIR = '~/.playgrounds'
    PLAYGROUNDS = {
      sinatra: {
        copy_contents: true,
        commands: [
          'bundle',
          'bundle exec shotgun'
        ]
      },
      jekyll: {
        copy_contents: true,
        commands: [
          'bundle',
          'bundle exec jekyll new . --force --blank',
          'bundle exec jekyll serve'
        ]
      },
      typescript: {
        copy_contents: true,
        commands: [
          'yarn install',
          'yarn nf start'
        ]
      },
      flask: {
        copy_contents: true,
        commands: [
          'sh build.sh',
          'sh run.sh'
        ]
      },
      sass: {
        copy_contents: true,
        commands: [
          'yarn install',
          'yarn nf start'
        ]
      }
    }
  end
end
