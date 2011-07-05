def render(template, &block)
  engine = Haml::Engine.new(File.read("_#{template}.haml"))
  engine.render{ capture_haml(&block) }
end
