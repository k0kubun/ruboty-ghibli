module Ruboty
  module Handlers
    class Ghibli < Base
      on /ghibli/, name: 'ghibli', description: 'Show a random ghibli picture'

      def ghibli(message)
        message.reply('Yo')
      end
    end
  end
end
