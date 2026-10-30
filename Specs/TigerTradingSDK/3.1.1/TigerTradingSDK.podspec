Pod::Spec.new do |s|
  version = "3.1.1"
  artifact_base_url = "https://mobile-ios.tigerfintech.com/TigerTradingSDK"

  s.name = "TigerTradingSDK"
  s.version = version
  s.summary = "Tiger Trading iOS SDK Standard flavor."
  s.description = "Standard TigerTradingSDK XCFrameworks, plus the shared Core dependency."
  s.homepage = 'https://developer.itigerup.com/docs/openapi/repository/1675/markdown/master/data/classes/overview.md'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'Tiger Fintech' => 'ios@tigerfintech.com' }
  s.source = {
    :http => "#{artifact_base_url}/#{version}/standard-3.1.1.zip",
    :sha256 => "63ef113da145f6a7eeb819b3d9067eaf8f5a9eb78dec7dcf1277e59861c22d0d",
  }

  s.platform = :ios, '13.0'
  s.cocoapods_version = '>= 1.10.0'
  s.vendored_frameworks = 'Frameworks/*.xcframework'
  s.preserve_paths = [
    'LICENSE',
    'dSYMs/**/*',
    'SHA256SUMS',
  ]
  s.dependency 'TigerTradingSDKCore', version
  s.dependency "AFNetworking", "= 4.0.3"
  s.dependency "Protobuf", "= 3.26.1"
  s.dependency "YYText", "= 1.0.8"
  s.dependency "libpag", "= 4.3.64"
end
