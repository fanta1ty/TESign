Pod::Spec.new do |spec|
    spec.name         = "TESign"
    spec.version      = "1.4"
    spec.summary      = "Signature component for iOS written in Swift."
    spec.description  = <<-DESC
TESign helps user can draw the signature smoothly either by finger or by Apple pencil, he/she can also save and load the signature.
TESign works on both iPhone and iPad and it can extract the signature as Image.
    DESC
    spec.homepage     = "https://github.com/fanta1ty/TESign"
    spec.license      = { :type => "MIT", :file => "LICENSE" }
    spec.author       = { "Thinh Nguyen" => "thinhnguyen12389@gmail.com" }
    spec.source       = { :git => "https://github.com/fanta1ty/TESign.git", :tag => "#{spec.version}" }
    spec.ios.deployment_target = "11.0"
    spec.swift_version = "5.0"
    
    spec.source_files  = "TESign/**/*.swift"
    spec.resources        = ["TESign/TESign/TESignViewController.xib"]
end
