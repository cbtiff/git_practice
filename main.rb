require 'colorize'
require_relative 'git'


class Main
  include Git

  # .colorize allows us to add colors to text. Requires colorize gem in gemfile.
  # ##check out what self. does in ruby. Make sure you understand this concept.
  def self.menu
    puts '1: Enter git command'.colorize(:cyan)
    puts '2: Config list'.colorize(:cyan)
    puts '3: Exit'.colorize(:cyan)
    choice = gets.to_i
    case choice
      when 1
        puts 'Enter git command'.colorize(:cyan)
        Git.puts_git(gets.strip)
        # calls menu
      when 2
        Git.config
      when 3
      exit
    else
      puts 'Invalid choice'.colorize(:red)
      # calls menu
    end
    menu
  end
end

Main.menu
