# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Clear existing data from the languages table
Language.destroy_all

# Seed data for different programming languages
languages_data = [
  { title: "Python", description: "Python is a high-level programming language known for its simplicity and readability.", link: "https://www.python.org/" },
  { title: "JavaScript", description: "JavaScript is a versatile programming language used primarily for client-side web development.", link: "https://developer.mozilla.org/en-US/docs/Web/JavaScript" },
  { title: "Java", description: "Java is a popular programming language used for building enterprise-scale applications.", link: "https://www.java.com/" },
  { title: "Ruby", description: "Ruby is a dynamic, object-oriented programming language known for its simplicity and productivity.", link: "https://www.ruby-lang.org/en/" },
  { title: "C++", description: "C++ is a powerful programming language used for system/application software, game development, drivers, and much more.", link: "https://isocpp.org/" },
  { title: "Swift", description: "Swift is a powerful and intuitive programming language developed by Apple for building iOS, macOS, watchOS, and tvOS apps.", link: "https://developer.apple.com/swift/" },
  { title: "PHP", description: "PHP is a widely-used open source general-purpose scripting language that is especially suited for web development and can be embedded into HTML.", link: "https://www.php.net/" },
  { title: "C#", description: "C# is a modern, general-purpose, object-oriented programming language developed by Microsoft. It is widely used for building Windows desktop applications, games, and web applications.", link: "https://docs.microsoft.com/en-us/dotnet/csharp/" },
  { title: "Go", description: "Go, also known as Golang, is a statically typed, compiled programming language designed by Google. It is simple, efficient, and easy to learn.", link: "https://golang.org/" },
  { title: "Rust", description: "Rust is a systems programming language that focuses on safety, speed, and concurrency. It is often used for building performance-critical software.", link: "https://www.rust-lang.org/" },
]

# Create languages using the seed data
languages_data.each do |language_data|
  Language.create(language_data)
end