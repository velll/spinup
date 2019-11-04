module Config
  DEFAULT_DIR = '~/.playgrounds'
  PLAYGROUNDS = {
    sinatra: {
      copy_contents: true,
      commands: [
        'bundle',
        "rerun 'ruby app.rb'"
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
    }
  }
end
