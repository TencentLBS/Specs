Pod::Spec.new do |s|
    s.name             = 'Tencent-MapSDK-FULL-XC'
    s.version          = '6.15.2.fix1'
    s.summary          = 'Tencent iOS map SDK'
    s.homepage         = 'https://lbs.qq.com/mobile/iOSMapSDK/mapGuide/summary'
    s.license          = { :type => 'MIT' }
    s.author           = { 'TencentLBS' => 'tencentlbspod@outlook.com'  }
        s.source           = {
      :http => 'https://framework-70105.njc.vod.tencent-cloud.com/map/result/QMapKitNavi_xc_6.15.2-alpha.fix2-1794381212.zip',
      :sha256 => '428c4892b1d21bd4cc090d0b294f526b6b786b62a1ffe2ee976f7f02aaf7ffe2'
    }

    s.ios.deployment_target = '12.0'

   s.vendored_frameworks = "QMapKit.xcframework"
   s.resource = "QMapKit.xcframework/ios-arm64/QMapKit.framework/QMapKit.bundle"
    
  
    s.libraries = [ 'z', 'c++', 'sqlite3.0' ]
    s.frameworks = 'UIKit', 'Foundation'
    s.user_target_xcconfig = {
      'OTHER_LDFLAGS[sdk=iphoneos*]' => '$(inherited) -weak_framework "MetalFX"'
    }
    s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }

end
