#
# Be sure to run `pod lib lint IBFramework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IBFramework'
  s.version          = '0.1.0'
  s.summary          = 'This is the demo framework app for simple custom framework.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: this is the learning demo framework created to test how it works.
                       DESC

  s.homepage         = 'https://github.com/Vijay1918/IBFramework'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Vijay1918' => 'vijayw1918@gmail.com' }
  s.source           = { :git => 'https://github.com/Vijay1918/IBFramework.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'Source/**/*'
  #s.source_files = 'IBFramework/Classes/**/*'
  
  s.swift_version = '5.0'
  
  s.platforms = {
    "ios": "12.0"
  }
  
  # s.resource_bundles = {
  #   'IBFramework' => ['IBFramework/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit', 'WebKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
