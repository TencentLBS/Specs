Pod::Spec.new do |s|
    s.name             = 'Tencent-MapSDK-FULL'
    s.version          = '6.15.2.fix2'
    s.summary          = 'Tencent iOS map SDK'
    s.homepage         = 'https://lbs.qq.com/mobile/iOSMapSDK/mapGuide/summary'
    s.license          = { :type => 'MIT' }
    s.author           = { 'TencentLBS' => 'tencentlbspod@outlook.com' }
        s.source           = {
      :http => 'https://framework-70105.njc.vod.tencent-cloud.com/map/result/QMapKitNavi_6.15.2-alpha.fix2-1794381212.zip',
      :sha256 => 'e46d90a56e36f9e420ae5afccb3c5f54b92aab7d47aaa8d0ee920d19501c800f'
    }

    s.ios.deployment_target = '12.0'

    s.vendored_frameworks = "QMapKit.framework"
    s.resource = "QMapKit.framework/QMapKit.bundle"
    
  
    s.libraries = [ 'z', 'c++', 'sqlite3.0' ]
    s.frameworks = 'UIKit', 'Foundation'
    s.user_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
      'OTHER_LDFLAGS[sdk=iphoneos*]' => '$(inherited) -weak_framework "MetalFX"'
    }
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }

end
