Pod::Spec.new do |s|
  version = "3.2.1"
  artifact_base_url = "https://mobile-ios.tigerfintech.com/TigerTradingSDK"

  s.name = "TigerTradingSDKUS"
  s.version = version
  s.summary = "Tiger Trading iOS SDK US flavor."
  s.description = "US TigerTradingSDK XCFrameworks, plus the shared Core dependency."
  s.homepage = 'https://developer.itigerup.com/docs/openapi/repository/1675/markdown/master/data/classes/overview.md'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'Tiger Fintech' => 'ios@tigerfintech.com' }
  s.source = {
    :http => "#{artifact_base_url}/#{version}/us-3.2.1.zip",
    :sha256 => "619e9d780d89d19c1ffef89daafb03e0b0d65f88efe8f285fe6dbf7a53b6fc1c",
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
  s.dependency 'GTCaptcha4', '= 1.8.8'
  s.dependency 'Intercom', '= 9.3.5.2'
  s.dependency 'RecaptchaEnterprise', '= 18.7.0'
end
