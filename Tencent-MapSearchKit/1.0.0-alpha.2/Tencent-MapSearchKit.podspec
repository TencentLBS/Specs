Pod::Spec.new do |s|
    s.name             = 'Tencent-MapSearchKit'
    s.version          = '1.0.0-alpha.2'
    s.summary          = 'Tencent iOS map search SDK'
    s.homepage         = 'https://lbs.qq.com'
    s.license          = { :type => 'MIT' }
    s.author           = { 'TencentLBS' => 'tencentlbspod@outlook.com' }
        s.source           = {
      :http => 'https://framework-70105.njc.vod.tencent-cloud.com/mapSearch/result/QMapSearchKit_1.0.0-alpha.2-1794999836.zip',
      :sha256 => '5247d15a584abe0c2e040d7fef54a793e7b3093223cffe80992149bf37295c9e'
    }

    s.ios.deployment_target = '12.0'

    s.vendored_frameworks = 'QMapSearchKit.framework'

    s.libraries = [ 'z', 'c++' ]
    s.frameworks = 'UIKit', 'Foundation', 'CoreLocation', 'Security'
    s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }

    # 对外版：依赖 QMapFoundationKit（QMapNetworkManager / QFoundationPrivacy）
    # 与 Tencent-MapSDK / Tencent-MapSDK-FULL 依赖同一 Foundation pod，共存时由 CocoaPods 合并为一份
    s.dependency 'Tencent-MapFoundation', '>= 5.2.4'
end
