Pod::Spec.new do |s|
    s.name             = 'Tencent-MapSearchKit-XC'
    s.version          = '1.0.0-alpha.2'
    s.summary          = 'Tencent iOS map search SDK'
    s.homepage         = 'https://lbs.qq.com'
    s.license          = { :type => 'MIT' }
    s.author           = { 'TencentLBS' => 'tencentlbspod@outlook.com' }
        s.source           = {
      :http => 'https://framework-70105.njc.vod.tencent-cloud.com/mapSearch/result/QMapSearchKit_xc_1.0.0-alpha.2-1794999836.zip',
      :sha256 => 'edb11f40c44e260fd60cb237f4126fc73c627076432e33200a5798bfd8249614'
    }

    s.ios.deployment_target = '12.0'

    s.vendored_frameworks = 'QMapSearchKit.xcframework'

    s.libraries = [ 'z', 'c++' ]
    s.frameworks = 'UIKit', 'Foundation', 'CoreLocation', 'Security'
    s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }

    # 对外版：依赖 QMapFoundationKit（QMapNetworkManager / QFoundationPrivacy）
    # 与 Tencent-MapSDK-XC / Tencent-MapSDK-FULL-XC 依赖同一 Foundation pod，共存时由 CocoaPods 合并为一份
    s.dependency 'Tencent-MapFoundation-XC', '>= 5.2.4'
end
