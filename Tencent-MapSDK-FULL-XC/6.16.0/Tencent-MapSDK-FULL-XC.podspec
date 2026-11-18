Pod::Spec.new do |s|
    s.name             = 'Tencent-MapSDK-FULL-XC'
    s.version          = '6.16.0'
    s.summary          = 'Tencent iOS map SDK'
    s.homepage         = 'https://lbs.qq.com/mobile/iOSMapSDK/mapGuide/summary'
    s.license          = { :type => 'MIT' }
    s.author           = { 'TencentLBS' => 'tencentlbspod@outlook.com'  }
        s.source           = {
      :http => 'https://framework-70105.njc.vod.tencent-cloud.com/map/result/QMapKitNavi_xc_6.16.0-1794990081.zip',
      :sha256 => '2318d690dc3193645d167a0eaf1131b61266cad8dc189f1fd90d0621cc52e519'
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
