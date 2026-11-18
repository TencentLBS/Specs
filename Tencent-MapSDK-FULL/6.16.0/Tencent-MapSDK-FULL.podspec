Pod::Spec.new do |s|
    s.name             = 'Tencent-MapSDK-FULL'
    s.version          = '6.16.0'
    s.summary          = 'Tencent iOS map SDK'
    s.homepage         = 'https://lbs.qq.com/mobile/iOSMapSDK/mapGuide/summary'
    s.license          = { :type => 'MIT' }
    s.author           = { 'TencentLBS' => 'tencentlbspod@outlook.com' }
        s.source           = {
      :http => 'https://framework-70105.njc.vod.tencent-cloud.com/map/result/QMapKitNavi_6.16.0-1794990081.zip',
      :sha256 => '7e2a828f223099cfe89bceb528b70e5e1110fa424407e353c0fb0651605af315'
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
