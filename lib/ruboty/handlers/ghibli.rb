module Ruboty
  module Handlers
    class Ghibli < Base
      PICTURES = {
        baron:        (1..50).map { |i| 'http://www.ghibli.jp/gallery/baron%03d.jpg' % i },
        chihiro:      (1..50).map { |i| 'http://www.ghibli.jp/gallery/chihiro%03d.jpg' % i },
        ged:          (1..50).map { |i| 'http://www.ghibli.jp/gallery/ged%03d.jpg' % i },
        ghiblies:     (1..50).map { |i| 'http://www.ghibli.jp/gallery/ghiblies%03d.jpg' % i },
        howl:         (1..50).map { |i| 'http://www.ghibli.jp/gallery/howl%03d.jpg' % i },
        kaguyahime:   (1..50).map { |i| 'http://www.ghibli.jp/gallery/kaguyahime%03d.jpg' % i },
        karigurashi:  (1..50).map { |i| 'http://www.ghibli.jp/gallery/karigurashi%03d.jpg' % i },
        kazetachinu:  (1..50).map { |i| 'http://www.ghibli.jp/gallery/kazetachinu%03d.jpg' % i },
        kokurikozaka: (1..50).map { |i| 'http://www.ghibli.jp/gallery/kokurikozaka%03d.jpg' % i },
        marnie:       (1..50).map { |i| 'http://www.ghibli.jp/gallery/marnie%03d.jpg' % i },
        mimi:         (1..50).map { |i| 'http://www.ghibli.jp/gallery/mimi%03d.jpg' % i },
        mononoke:     (1..50).map { |i| 'http://www.ghibli.jp/gallery/mononoke%03d.jpg' % i },
        ponyo:        (1..50).map { |i| 'http://www.ghibli.jp/gallery/ponyo%03d.jpg' % i },
        yamada:       (1..50).map { |i| 'http://www.ghibli.jp/gallery/yamada%03d.jpg' % i },
      }

      on /ghibli( +(?<title>.+))?/, name: 'ghibli', description: PICTURES.keys.join(' ')

      def ghibli(message)
        if title = message[:title]&.to_sym
          if PICTURES.key?(title)
            message.reply(PICTURES[title].sample)
          else
            message.reply("Unknown title. Use: #{PICTURES.keys.join(' ')}")
          end
        else
          message.reply(PICTURES[PICTURES.keys.sample].sample)
        end
      end
    end
  end
end
