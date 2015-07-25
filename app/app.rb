class App
  def self.call(env)
    [ENV['STATUS'].to_i, { "Content-Type" => "text/html" }, ["content"]]
  end
end
