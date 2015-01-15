class Cd

  @@cd = []

  attr_reader(:artist, :album)

  define_method(:initialize) do |attributes|
    @artist = attributes.fetch(:artist)
    @album = attributes.fetch(:album)
  end

  define_singleton_method(:all) do
    @@cd
  end

  define_method(:save) do
    @@cd.push(self)
    self
  end

  define_singleton_method(:clear) do
    @@cd = []
  end

  define_singleton_method(:album_search) do |artist|
    @@cd.each() do |object|
       if object.artist() == artist
          return object
       end
    end
  end
end
