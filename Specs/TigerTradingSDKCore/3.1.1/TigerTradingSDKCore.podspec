Pod::Spec.new do |s|
  version = "3.1.1"
  artifact_base_url = "https://mobile-ios.tigerfintech.com/TigerTradingSDK"

  s.name = "TigerTradingSDKCore"
  s.version = version
  s.summary = "Shared binary frameworks for TigerTradingSDK."
  s.description = "Shared XCFrameworks required by the Standard and US TigerTradingSDK flavors. Install TigerTradingSDK or TigerTradingSDKUS for a complete SDK variant."
  s.homepage = 'https://developer.itigerup.com/docs/openapi/repository/1675/markdown/master/data/classes/overview.md'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'Tiger Fintech' => 'ios@tigerfintech.com' }
  s.source = {
    :http => "#{artifact_base_url}/#{version}/core-3.1.1.zip",
    :sha256 => "4b00cb44d3f690232b91085513c71f26b84e0a0efb4823bbe8c325272e5045a4",
  }

  s.platform = :ios, '13.0'
  s.cocoapods_version = '>= 1.10.0'
  s.vendored_frameworks = 'Frameworks/*.xcframework'
  s.preserve_paths = [
    'LICENSE',
    'dSYMs/**/*',
    'SHA256SUMS',
  ]
  s.dependency "AFNetworking"
  s.dependency "CocoaLumberjack"
  s.dependency "FLAnimatedImage"
  s.dependency "FMDB"
  s.dependency "MBProgressHUD"
  s.dependency "MJRefresh"
  s.dependency "MMKV"
  s.dependency "MMKVCore"
  s.dependency "Mantle"
  s.dependency "Masonry"
  s.dependency "MqttCocoaAsyncSocket"
  s.dependency "PromisesObjC"
  s.dependency "PromisesSwift"
  s.dependency "Protobuf"
  s.dependency "ReactiveObjC"
  s.dependency "SDWebImage"
  s.dependency "YYCategories", "= 1.0.4"
  s.dependency "YYModel"
  s.dependency "YYText"
  s.dependency "libpag"
end
