#
# Be sure to run `pod lib lint ReplaceRootViewController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ReplaceRootViewController'
  s.version          = '1.0.7'
  s.summary          = 'This pod fixes a UIView memory leak that occurs when swapping out the root view controller in a UIWindow.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This project demonstrates a fix for http://www.openradar.me/21404408
You will need to use the console in xcode and debugging tools (eg "debug view hierarchy") to verify that everything is working as expected.
                       DESC

  s.homepage         = 'https://github.com/voltbank/ReplaceRootViewController'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sushant verma' => 'sushant.verma@voltbank.com.au' }
  s.source           = { :git => 'https://github.com/voltbank/ReplaceRootViewController.git', :tag => s.version.to_s }
  s.swift_version = '4.2'
  s.ios.deployment_target = '11.0'

  s.source_files = 'ReplaceRootViewController/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ReplaceRootViewController' => ['ReplaceRootViewController/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
