#
# Be sure to run `pod lib lint SuxiNumberInputView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SuxiNumberInputView'
  s.version          = '0.1.0'
  s.summary          = 'A simple custom number pad input view with a "Done" button.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
SuxiNumberInputView is a simple custom input view for UITextField and UITextView when you want to use number pad keyboard with a "Done" button.
                       DESC

  s.homepage         = 'https://github.com/sadwx/SuxiNumberInputView'
  s.screenshots      = 'https://github.com/sadwx/SuxiNumberInputView/ScreenShot.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'simon.lin' => 'sadwx4017@gmail.com' }
  s.source           = { :git => 'https://github.com/sadwx/SuxiNumberInputView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'SuxiNumberInputView/Classes/**/*'
  s.resources = "SuxiNumberInputView/**/*.xib"
  
  s.resource_bundles = {
    'SuxiNumberInputView' => ['Pod/**/*.xib']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
