Pod::Spec.new do |s|
  version = '3.2.0'
  artifact_base_url = "https://mobile-ios.tigerfintech.com/TigerTradingSDK/#{version}"

  s.name = 'TigerTradingSDK-Standard-Binary'
  s.version = version
  s.summary = 'Internal Standard flavor binaries for TigerTradingSDK.'
  s.description = 'Contains only the Standard-specific XCFrameworks for TigerTradingSDK.'
  s.homepage = 'https://developer.itigerup.com/docs/openapi/repository/1675/markdown/master/data/classes/overview.md'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'Tiger Fintech' => 'ios@tigerfintech.com' }
  s.source = {
    :http => "#{artifact_base_url}/standard-#{version}.zip",
    :sha256 => '57c59a3adde6fb7eee4fd1beb21961ab4045ac02b9e3d349907ec848cca73867',
  }

  s.platform = :ios, '13.0'
  s.cocoapods_version = '>= 1.10.0'
  s.vendored_frameworks = 'Frameworks/*.xcframework'
  s.preserve_paths = [
    'LICENSE',
    'dSYMs/**/*',
    'evidence/**/*',
    'build-manifest.json',
    'SHA256SUMS',
  ]
end
