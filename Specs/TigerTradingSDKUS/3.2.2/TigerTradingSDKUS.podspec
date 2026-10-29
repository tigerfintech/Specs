Pod::Spec.new do |s|
  version = "3.2.2"
  artifact_base_url = "https://mobile-ios.tigerfintech.com/TigerTradingSDK"

  s.name = "TigerTradingSDKUS"
  s.version = version
  s.summary = "Tiger Trading iOS SDK US flavor."
  s.description = "US TigerTradingSDK XCFrameworks, plus the shared Core dependency."
  s.homepage = 'https://developer.itigerup.com/docs/openapi/repository/1675/markdown/master/data/classes/overview.md'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'Tiger Fintech' => 'ios@tigerfintech.com' }
  s.source = {
    :http => "#{artifact_base_url}/#{version}/us-3.2.2.zip",
    :sha256 => "f4a7737290ef3268a192837059a92f0e9558eab11a65ca495143bf0dcaff6b09",
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
  s.dependency "GTCaptcha4", "= 1.8.8"
  s.dependency "Intercom", "= 9.3.5.2"
  s.dependency "Mantle", "~> 2.1.0"
  s.dependency "Protobuf", "= 3.26.1"
  s.dependency "RecaptchaEnterprise", "= 18.7.0"
  s.dependency "YYCategories"
  s.dependency "YYText", "= 1.0.8"
  s.dependency "libpag", "= 4.3.64"
end
