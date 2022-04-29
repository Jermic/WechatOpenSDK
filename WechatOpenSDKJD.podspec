Pod::Spec.new do |spec|
  spec.name         = "WechatOpenSDKJD"
  spec.version      = "1.9.2-1"
  spec.summary      = "WechatOpenSDKJD.1.9.2 With Pay"
  spec.description  = <<-DESC
                   WechatOpenSDKJD.1.9.2 With Pay!
                   DESC

  spec.homepage     = "https://github.com/Jermic/WechatOpenSDK"
  spec.license      = "MIT"
  spec.author             = { "Jermic" => "jermic@qq.com" }
  spec.source       = { :git => "https://github.com/Jermic/WechatOpenSDK.git", :tag => "#{spec.version}" }
  spec.platform         = :ios, '9.0'
  
  spec.public_header_files = "OpenSDK1.9.2/*.h"
  spec.source_files        = "OpenSDK1.9.2/*.{h,m,mm}"
  spec.vendored_libraries  = 'OpenSDK1.9.2/*.a'
  spec.frameworks            = 'CFNetwork', 'Security', 'CoreTelephony', 'SystemConfiguration', 'UIKit', 'CoreGraphics', 'Foundation', 'WebKit'
  spec.libraries           = 'z', 'sqlite3.0', 'c++'

  spec.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC -all_load' }
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
