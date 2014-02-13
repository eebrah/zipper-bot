require 'cinch'
require_relative 'np'
require_relative 'np_libre'
require_relative 'messanger'

bot = Cinch::Bot.new do
	configure do |c|
		c.nick = "eebrah|bot"
		c.server = "irc.freenode.net"
		c.channels = ["#nairobilug"]
		c.plugins.prefix = /^@/

		c.plugins.plugins = [Np, Messanger, Np_libre]

	end
end

bot.start
