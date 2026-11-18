Pod::Spec.new do |s|
    s.name             = 'Tencent-MapSDK-XC'
    s.version          = '6.16.0'
    s.summary          = 'Tencent iOS map SDK'
    s.homepage         = 'https://lbs.qq.com/mobile/iOSMapSDK/mapGuide/summary'
    s.license          = { :type => 'MIT' }
    s.author           = { 'TencentLBS' => 'tencentlbspod@outlook.com'  }
        s.source           = {
      :http => 'https://framework-70105.njc.vod.tencent-cloud.com/map/result/QMapKit_xc_6.16.0-1794990081.zip',
      :sha256 => '152b5c713a0ccf02fe52265b74a3652469ea33af56a6c666e608f20c4e98e707'
    }

    s.ios.deployment_target = '12.0'

   s.vendored_frameworks = "QMapKit.xcframework"
   s.resource = "QMapKit.xcframework/ios-arm64/QMapKit.framework/QMapKit.bundle"
    
  
    s.libraries = [ 'z', 'c++', 'sqlite3.0' ]
    s.frameworks = 'UIKit', 'Foundation'
    s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }

end
