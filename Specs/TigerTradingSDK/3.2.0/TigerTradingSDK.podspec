Pod::Spec.new do |s|
  version = '3.2.0'
  artifact_base_url = "https://mobile-ios.tigerfintech.com/TigerTradingSDK/#{version}"

  s.name = 'TigerTradingSDK'
  s.version = version
  s.summary = 'Tiger Trading iOS binary SDK.'
  s.description = <<-DESC
Tiger Trading iOS SDK packaged as immutable XCFramework artifacts. The root
pod carries the shared Core binary and exposes mutually exclusive Standard and
US flavor subspecs.
  DESC
  s.homepage = 'https://developer.itigerup.com/docs/openapi/repository/1675/markdown/master/data/classes/overview.md'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'Tiger Fintech' => 'ios@tigerfintech.com' }
  s.source = {
    :http => "#{artifact_base_url}/core-#{version}.zip",
    :sha256 => 'd2737f6a4d86c836e67d726b99f392c61d54dc8250c45239f91af7dfa9ae1998',
  }

  s.platform = :ios, '13.0'
  s.cocoapods_version = '>= 1.10.0'
  s.default_subspec = 'Standard'
  s.preserve_paths = [
    'LICENSE',
    'dSYMs/**/*',
    'evidence/**/*',
    'build-manifest.json',
    'SHA256SUMS',
  ]

  s.subspec 'Core' do |core|
    core.vendored_frameworks = 'Frameworks/*.xcframework'
    core.dependency 'AFNetworking'
    core.dependency 'CocoaLumberjack'
    core.dependency 'FLAnimatedImage'
    core.dependency 'FMDB'
    core.dependency 'libpag', '= 4.3.64'
    core.dependency 'Mantle'
    core.dependency 'Masonry'
    core.dependency 'MBProgressHUD'
    core.dependency 'MJRefresh'
    core.dependency 'MMKV'
    core.dependency 'MMKVCore'
    core.dependency 'MqttCocoaAsyncSocket'
    core.dependency 'PromisesObjC'
    core.dependency 'PromisesSwift'
    core.dependency 'Protobuf', '= 3.26.1'
    core.dependency 'ReactiveObjC'
    core.dependency 'SDWebImage'
    core.dependency 'YYCategories', '= 1.0.4'
    core.dependency 'YYModel'
    core.dependency 'YYText', '= 1.0.8'
  end

  s.subspec 'Standard' do |standard|
    standard.dependency 'TigerTradingSDK/Core', version
    standard.dependency 'TigerTradingSDK-Standard-Binary', version
  end

  s.subspec 'US' do |us|
    us.dependency 'TigerTradingSDK/Core', version
    us.dependency 'TigerTradingSDK-US-Binary', version
  end
end
