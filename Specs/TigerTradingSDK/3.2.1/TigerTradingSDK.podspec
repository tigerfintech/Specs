Pod::Spec.new do |s|
  version = "3.2.1"
  artifact_base_url = "https://mobile-ios.tigerfintech.com/TigerTradingSDK"

  s.name = "TigerTradingSDK"
  s.version = version
  s.summary = "Tiger Trading iOS SDK Standard flavor."
  s.description = "Standard TigerTradingSDK XCFrameworks, plus the shared Core dependency."
  s.homepage = 'https://developer.itigerup.com/docs/openapi/repository/1675/markdown/master/data/classes/overview.md'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'Tiger Fintech' => 'ios@tigerfintech.com' }
  s.source = {
    :http => "#{artifact_base_url}/#{version}/standard-3.2.1.zip",
    :sha256 => "74f7dd37503bde53091b220e97a1edabc18ee2f51767869b44e97825c08d801b",
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
end
