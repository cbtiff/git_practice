require 'colorize'
require_relative 'git'


class Main
  include Git

  # .colorize allows us to add colors to text. Requires colorize gem in gemfile.
  def self.menu
    puts '1: Enter git command'.colorize(:cyan)
    puts '2: Exit'.colorize(:cyan)
    choice = gets.to_i
    case choice
      when 1
        puts 'Enter git command'.colorize(:cyan)
        Git.puts_git(gets.strip)
        # calls menu
      when 2
      exit
    else
      puts 'Invalid choice'.colorize(:red)
      # calls menu
    end
    menu
  end
end

Main.menu
