Pod::Spec.new do |s|
  s.name         = "Swiftent"
  s.version      = "0.0.13"
  s.summary      = "Standartize your way of putting content into containers"

  s.description  = <<-DESC
Swiftent is here to standardize a way to put your content into your views or other containers
                   DESC

  s.homepage     = "https://github.com/fantast1k/Swiftent.git"
  s.license      = "GNUv3"

  s.author             = { "Dmitry Fa[n]tastik" => "dmitry.fantastik@gmail.com" }

  s.ios.deployment_target = "8.0"

  s.source       = { :git => "https://github.com/fantast1k/Swiftent.git", :tag => "#{s.version}" }

  s.source_files  = "Swiftent/Swiftent/Source/*.swift", "Swiftent/Swiftent/Source/Common/*.swift"
  s.ios.source_files  = "Swiftent/Swiftent/Source/UIKit/*.swift"

end
