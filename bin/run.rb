#!/usr/bin/env ruby

require_relative "../lib/api_communicator_class.rb"
require_relative "../lib/command_line_interface.rb"

welcome
character = get_character_from_user
character.show_character_movies
