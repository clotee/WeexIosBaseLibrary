#
# Be sure to run `pod lib lint WeexIosBaseLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WeexIosBaseLibrary'
  s.version          = '0.1.0'
  s.summary          = 'A short description of WeexIosBaseLibrary.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/clotee/WeexIosBaseLibrary'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'clotee@foxmail.com' => 'clotee@foxmail.com' }
  s.source           = { :git => 'https://github.com/clotee/WeexIosBaseLibrary.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = '8.0'
  
  s.requires_arc = true
  
  s.dependency 'YYText', '1.0.7'
  s.dependency 'Masonry', '1.1.0'
  s.dependency 'YYModel', '1.0.4'
  s.dependency 'SSZipArchive', '1.6.2'
  s.dependency 'YTKNetwork', '2.0.3'
  s.dependency 'SocketRocket', '0.4.2'
  s.dependency 'SDWebImage', '3.7.6'
  s.dependency 'MJRefresh', '3.1.12'
  s.dependency 'CTMediator', '13'
  
  #Device信息非ARC
  s.subspec 'BMDevice' do |ss|
      ss.source_files  = "Source/BMDevice/*.{c,h,m,mm,S}"
      ss.frameworks    = "Security"
      ss.requires_arc  = false
  end
  
  #自定义转场动画
  s.subspec 'BMTransition' do |ss|
      ss.source_files  = "Source/BMTransition/*.{c,h,m,mm,S}"
      ss.public_header_files = "Source/BMTransition/*.h"
      ss.requires_arc  = true
  end
  
  #Debug 相关类
  s.subspec 'BMDebug' do |ss|
      ss.source_files  = "Source/BMDebug/**/*.{c,h,m,mm,S}"
      ss.public_header_files = "Source/BMDebug/**/*.h"
      ss.requires_arc  = true
  end
  
  #对iOS系统类的拓展
  s.subspec 'BMExtension' do |ss|
      ss.source_files  = "Source/BMExtension/**/*.{c,h,m,mm,S}"
      ss.public_header_files = "Source/BMExtension/**/*.h"
      ss.requires_arc  = true
      ss.libraries = "bz2"
  end
  
  #对Weex系统类的拓展
  s.subspec 'BMWeexExtension' do |ss|
      ss.source_files  = "Source/BMWeexExtension/*.{c,h,m,mm,S}"
      ss.public_header_files = "Source/BMWeexExtension/*.h"
      ss.resources = 'Source/BMWeexExtension/Resources/*'
      ss.requires_arc  = true
  end
  
  #Controller类
  s.subspec 'BMController' do |ss|
      ss.source_files  = "Source/BMController/**/*.{c,h,m,mm,S}"
      ss.public_header_files = "Source/BMController/**/*.h"
      ss.requires_arc  = true
  end
  
  #Network类
  s.subspec 'BMNetwork' do |ss|
      ss.source_files  = "Source/BMNetwork/**/*.{c,h,m,mm,S}"
      ss.public_header_files = "Source/BMNetwork/**/*.h"
      ss.requires_arc  = true
  end
  
  #Weex Module
  s.subspec 'BMModule' do |ss|
      ss.source_files  = "Source/BMModule/**/*.{c,h,m,mm,S}"
      ss.public_header_files = "Source/BMModule/**/*.h"
      ss.resources = 'Source/BMModule/Modal/SVProgressHUD/SVProgressHUD.bundle'
      ss.requires_arc  = true
      ss.dependency "Realm",'3.1.0'
      ss.dependency "BindingX",'1.0.3'
      ss.dependency 'TZImagePickerController', '3.1.2'
  end
  
  #Weex BMManager
  s.subspec 'BMManager' do |ss|
      ss.source_files  = "Source/BMManager/**/*.{c,h,m,mm,S}"
      ss.public_header_files = "Source/BMManager/**/*.h"
      ss.requires_arc  = true
  end
  
  #自定义Handler
  s.subspec 'BMHandler' do |ss|
      ss.source_files  = "Source/BMHandler/*.{c,h,m,mm,S}"
      ss.public_header_files = "Source/BMHandler/*.h"
      ss.requires_arc  = true
  end
  
  #自定义CustomUI
  s.subspec 'BMCustomUI' do |ss|
      ss.source_files  = "Source/BMCustomUI/**/*.{c,h,m,mm,S}"
      ss.public_header_files = "Source/BMCustomUI/**/*.h"
      ss.requires_arc  = true
  end
  
  #自定义组件
  s.subspec 'BMComponent' do |ss|
      ss.source_files  = "Source/BMComponent/**/*.{c,h,m,mm,S}"
      ss.public_header_files = "Source/BMComponent/**/*.h"
      ss.requires_arc  = true
      ss.resources = 'Source/BMComponent/Calendar/Resources/*.png','Source/BMComponent/Chart/Resources/*'
      ss.dependency 'FSCalendar','2.7.8'
      ss.dependency 'YYText', '1.0.7'
  end
  
  #自定义组件
  s.subspec 'BMModel' do |ss|
      ss.source_files  = "Source/BMModel/*.{c,h,m,mm,S}"
      ss.public_header_files = "Source/BMModel/*.h"
      ss.requires_arc  = true
  end
  
  #ErosApp
  s.subspec 'ErosApp' do |ss|
      ss.source_files  = "Source/ErosApp/**/*.{c,h,m,mm,S,pch}"
      ss.public_header_files = "Source/ErosApp/**/*.h"
      ss.requires_arc  = true
      ss.prefix_header_file = 'Source/ErosApp/ErosDefine/PrefixHeader.pch'
  end
  
  # s.resource_bundles = {
  #   'WeexIosBaseLibrary' => ['WeexIosBaseLibrary/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
