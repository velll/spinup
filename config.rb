module Config
  DEFAULT_DIR = "~/.playgrounds"
  PLAYGROUNDS = {
    sinatra: {
       copy_contents: true,
       commands: [
         "bundle",
         "ruby app.rb"
       ]
    },
    typescript: {
      copy_contents: true,
      commands: [
        "ls -l"
      ]
    }
  }
end