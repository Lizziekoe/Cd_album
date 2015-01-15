class Cd

  @@cd = []

  # attr_reader(:artist, :album)

  define_method(:initialize) do |attributes|
    @artist = attributes.fetch(:artist)
    @album = attributes.fetch(:album)
  end

  define_singleton_method(:all) do
    @@cd
  end

  define_method(:save) do
    @@cd.push(self)
  end

  define_singleton_method(:clear) do
    @@cd = []
  end
end
