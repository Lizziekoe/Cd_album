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

  define_singleton_method(:search) do |music|
    @@cd.each() do |object|
       if object.artist() == music
          return object
        elsif object.album() == music
          return object
        else
          return "You still need to buy that one."
       end
    end
  end
end
