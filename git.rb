module Git
  # allows command line process in terminal for git
  def self.puts_git(cmd)
  puts `git #{cmd} -h`
  end
end
