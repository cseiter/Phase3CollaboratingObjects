require 'pry'

class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path=path
    end

    def files
        #file_list = Dir.glob(File.join("**","*.mp3"), base: "#{path}")
        #binding.pry 
        #@files = Dir.glob("#{path}/*.mp3")
        #@files ||= @files.collect {|ind_file_names| ind_file_names.sub!("#{path}/","")}
        @files ||= Dir.glob("#{path}/*.mp3").collect {|ind_file_names| ind_file_names.gsub("#{path}/","")}
    end

    def import
    end

end