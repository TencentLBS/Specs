Pod::Spec.new do |s|
    s.name             = 'Tencent-MapSDK'
    s.version          = '6.16.0'
    s.summary          = 'Tencent iOS map SDK'
    s.homepage         = 'https://lbs.qq.com/mobile/iOSMapSDK/mapGuide/summary'
    s.license          = { :type => 'MIT' }
    s.author           = { 'TencentLBS' => 'tencentlbspod@outlook.com' }
        s.source           = {
      :http => 'https://framework-70105.njc.vod.tencent-cloud.com/map/result/QMapKit_6.16.0-1794990081.zip',
      :sha256 => 'd97f51f88447d1505a55e73029bedb973d307f498dda91ec14ee8ca3cc02f808'
    }

    s.ios.deployment_target = '12.0'

    s.vendored_frameworks = "QMapKit.framework"
    s.resource = "QMapKit.framework/QMapKit.bundle"
    
  
    s.libraries = [ 'z', 'c++', 'sqlite3.0' ]
    s.frameworks = 'UIKit', 'Foundation'
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }

end
