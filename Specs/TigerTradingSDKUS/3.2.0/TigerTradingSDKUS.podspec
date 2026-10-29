Pod::Spec.new do |s|
  version = "3.2.0"
  artifact_base_url = "https://mobile-ios.tigerfintech.com/TigerTradingSDK"

  s.name = "TigerTradingSDKUS"
  s.version = version
  s.summary = "Tiger Trading iOS SDK US flavor."
  s.description = "US TigerTradingSDK XCFrameworks, plus the shared Core dependency."
  s.homepage = 'https://developer.itigerup.com/docs/openapi/repository/1675/markdown/master/data/classes/overview.md'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'Tiger Fintech' => 'ios@tigerfintech.com' }
  s.source = {
    :http => "#{artifact_base_url}/#{version}/us-3.2.0.zip",
    :sha256 => "a5d8c1dd5bfb60e2803cd6fa29da35bc32586816bf51d17eb7e9cb42a2615fd3",
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
