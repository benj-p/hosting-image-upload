require "open-uri"

image = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")

article = Article.new(title: "NES", body: "A great console 🎮")
article.photo.attach(io: image, filename: "nes.png", content_type: "image/png")
article.save
