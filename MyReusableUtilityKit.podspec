#
#  Be sure to run `pod spec lint MyReusableUtilityKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

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

