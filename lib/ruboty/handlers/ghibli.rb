module Ruboty
  module Handlers
    class Ghibli < Base
      PICTURES = {
        baron:        (1..50).map { |i| 'http://www.ghibli.jp/gallery/baron%3d.jpg' % i },
        chihiro:      (1..50).map { |i| 'http://www.ghibli.jp/gallery/chihiro%3d.jpg' % i },
        ged:          (1..50).map { |i| 'http://www.ghibli.jp/gallery/ged%3d.jpg' % i },
        ghiblies:     (1..50).map { |i| 'http://www.ghibli.jp/gallery/ghiblies%3d.jpg' % i },
        howl:         (1..50).map { |i| 'http://www.ghibli.jp/gallery/howl%3d.jpg' % i },
        kaguyahime:   (1..50).map { |i| 'http://www.ghibli.jp/gallery/kaguyahime%3d.jpg' % i },
        karigurashi:  (1..50).map { |i| 'http://www.ghibli.jp/gallery/karigurashi%3d.jpg' % i },
        kazetachinu:  (1..50).map { |i| 'http://www.ghibli.jp/gallery/kazetachinu%3d.jpg' % i },
        kokurikozaka: (1..50).map { |i| 'http://www.ghibli.jp/gallery/kokurikozaka%3d.jpg' % i },
        marnie:       (1..50).map { |i| 'http://www.ghibli.jp/gallery/marnie%3d.jpg' % i },
        mimi:         (1..50).map { |i| 'http://www.ghibli.jp/gallery/mimi%3d.jpg' % i },
        mononoke:     (1..50).map { |i| 'http://www.ghibli.jp/gallery/mononoke%3d.jpg' % i },
        ponyo:        (1..50).map { |i| 'http://www.ghibli.jp/gallery/ponyo%3d.jpg' % i },
        yamada:       (1..50).map { |i| 'http://www.ghibli.jp/gallery/yamada%3d.jpg' % i },
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
