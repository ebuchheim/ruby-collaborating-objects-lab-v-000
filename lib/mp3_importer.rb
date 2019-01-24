class MP3Importer

    attr_reader :path

    def initialize(path)
        @path = path
    end

    def files
        array_of_strings = Dir["#{path}/*"]
        array_of_strings.map do |song_info|
            song_array = song_info.split(/\//)
            song_array[-1]
        end
    end

    def import
      self.files.each{ |filename| Song.new_by_filename(filename) }
    end

end

