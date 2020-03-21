Pod::Spec.new do |spec|
    spec.name         = "TESign"
    spec.version      = "1.0"
    spec.summary      = "Signature component for iOS written in Swift."
    
    spec.description  = <<-DESC
    This CocoaPods library helps you can draw the signature either by finger or by apple pencil.
                   DESC
                   
    spec.homepage     = "https://github.com/fanta1ty/TESign"
    spec.license      = { :type => "MIT", :file => "LICENSE" }
    spec.author             = { "Thinh Nguyen" => "thinhnguyen12389@gmail.com" }
    
    spec.ios.deployment_target = "11.0"
    spec.swift_version = "5.0"
    
    spec.source       = { :git => "https://github.com/fanta1ty/TESign.git", :tag => "#{spec.version}" }
    spec.source_files  = "TESign/**/*.{h,m,swift}"
end
