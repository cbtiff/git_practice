module Git
  # allows command line process in terminal for git
  def self.git_cmd(cmd)
  puts `git #{cmd} -h`
  end

  #Config file will be shown.
  def self.config
    puts `git config -l`
  end
end
