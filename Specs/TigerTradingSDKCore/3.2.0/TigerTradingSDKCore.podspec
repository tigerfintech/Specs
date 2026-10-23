Pod::Spec.new do |s|
  version = '3.2.0'
  artifact_base_url = "https://mobile-ios.tigerfintech.com/TigerTradingSDK/#{version}"

  s.name = 'TigerTradingSDKCore'
  s.version = version
  s.summary = 'Shared binary frameworks for TigerTradingSDK.'
  s.description = <<-DESC
Shared XCFrameworks required by the Standard and US TigerTradingSDK flavors.
Install TigerTradingSDK or TigerTradingSDKUS for a complete SDK variant.
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
  s.preserve_paths = [
    'LICENSE',
    'dSYMs/**/*',
    'evidence/**/*',
    'build-manifest.json',
    'SHA256SUMS',
  ]

  s.vendored_frameworks = 'Frameworks/*.xcframework'
  s.dependency 'AFNetworking'
  s.dependency 'CocoaLumberjack'
  s.dependency 'FLAnimatedImage'
  s.dependency 'FMDB'
  s.dependency 'libpag', '= 4.3.64'
  s.dependency 'Mantle'
  s.dependency 'Masonry'
  s.dependency 'MBProgressHUD'
  s.dependency 'MJRefresh'
  s.dependency 'MMKV'
  s.dependency 'MMKVCore'
  s.dependency 'MqttCocoaAsyncSocket'
  s.dependency 'PromisesObjC'
  s.dependency 'PromisesSwift'
  s.dependency 'Protobuf', '= 3.26.1'
  s.dependency 'ReactiveObjC'
  s.dependency 'SDWebImage'
  s.dependency 'YYCategories', '= 1.0.4'
  s.dependency 'YYModel'
  s.dependency 'YYText', '= 1.0.8'
end
