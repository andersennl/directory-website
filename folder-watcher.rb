require "sinatra"

EXCLUDED_NAMES = %w(. .. ._.DS_Store .DS_Store -e production)

class Item
  attr_accessor :title, :path

  def initialize(path)
    @title = path.split("/").last.capitalize
    @path = path
  end

  def folders
    Dir.entries(path) - EXCLUDED_NAMES
  end
end

get "/" do
  items = ARGV.map { |path| Item.new(path) unless EXCLUDED_NAMES.include? path }
  erb :index, locals: { items: items.compact }
end

