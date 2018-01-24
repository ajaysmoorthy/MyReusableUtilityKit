Pod::Spec.new do |s|

  s.name         = "MyReusableUtilityKit"
  s.version      = "1.0"
  s.summary      = "Helps to gather all the common functions for use in a single place."
  s.description  = "MyReusableUtilityKit contains reusable codes that gather all the common functions for use in a single place for iOS developers."

  s.homepage     = "https://about.me/ajaysmoorthy"
  s.license      = "MIT"
  s.author       = "Ajay S Moorthy"

  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/ajaysmoorthy/MyReusableUtilityKit.git" }
  s.framework    = "UIKit"
  s.source_files  = "MyReusableUtilityKit", "MyReusableUtilityKit/**/*.{h,m,swift}"
  s.exclude_files = "Classes/Exclude"
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4' }

end

