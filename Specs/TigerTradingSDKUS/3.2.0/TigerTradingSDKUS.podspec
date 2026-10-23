Pod::Spec.new do |s|
  version = '3.2.0'
  artifact_base_url = "https://mobile-ios.tigerfintech.com/TigerTradingSDK/#{version}"

  s.name = 'TigerTradingSDKUS'
  s.version = version
  s.summary = 'Tiger Trading iOS SDK US flavor.'
  s.description = 'US TigerTradingSDK XCFrameworks, plus the shared Core dependency.'
  s.homepage = 'https://developer.itigerup.com/docs/openapi/repository/1675/markdown/master/data/classes/overview.md'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'Tiger Fintech' => 'ios@tigerfintech.com' }
  s.source = {
    :http => "#{artifact_base_url}/us-#{version}.zip",
    :sha256 => '101fc73c91e9e3a3181a4ca39b0039dd26c11133ba764f1ad4c48f8634a4608b',
  }

  s.platform = :ios, '13.0'
  s.cocoapods_version = '>= 1.10.0'
  s.vendored_frameworks = 'Frameworks/*.xcframework'
  s.dependency 'TigerTradingSDKCore', version
  s.preserve_paths = [
    'LICENSE',
    'dSYMs/**/*',
    'evidence/**/*',
    'build-manifest.json',
    'SHA256SUMS',
  ]

  s.dependency 'GTCaptcha4', '= 1.8.8'
  s.dependency 'Intercom', '= 9.3.5.2'
  s.dependency 'RecaptchaEnterprise', '= 18.7.0'
end
