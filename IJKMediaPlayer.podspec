#
# Be sure to run `pod lib lint IJKMediaPlayer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IJKMediaPlayer'
  s.version          = '0.1.0'
  s.summary          = 'A short description of IJKMediaPlayer.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/李亮/IJKMediaPlayer'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '李亮' => '554166037@qq.com' }
  s.source           = { :git => 'https://github.com/李亮/IJKMediaPlayer.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.ios.deployment_target = '8.0'
  s.frameworks = 'MediaPlayer', 'QuartzCore', 'CoreGraphics', 'CoreTelephony', 'AudioToolbox', 'Accelerate' , 'VideoToolbox', 'CoreAudio', 'OpenGLES'
  s.libraries  = 'z', 'iconv', 'bz2', 'stdc++'
  s.default_subspec = 'Lite', 'SSL'

  s.subspec 'Lite' do |ls|
    ls.vendored_frameworks = 'IJKMediaPlayer/IJKMediaFramework.framework'
  end
  #添加ssl支持
  s.subspec 'SSL' do |ss|
    ss.vendored_frameworks = 'IJKMediaPlayer/IJKMediaFramework.framework'
    ss.vendored_libraries = 'IJKMediaPlayer/ssl/*.a'
  end

end
