Pod::Spec.new do |s|
    s.name         = 'MJRefresh'
    s.version      = '3.4.5'
    s.summary      = 'An easy way to use pull-to-refresh'
    s.homepage     = 'https://github.com/tigerfintech/MJRefresh'
    s.license      = 'MIT'
    s.authors      = {'MJ Lee' => 'richermj123go@vip.qq.com'}
    s.platform     = :ios, '8.0'
    s.source       = {:git => 'https://github.com/tigerfintech/MJRefresh.git', :tag => s.version}
    s.source_files = 'MJRefresh/**/*.{h,m}'
    s.resources     = 'MJRefresh/MJRefresh.bundle', 'MJRefresh/PrivacyInfo.xcprivacy'
    s.requires_arc = true
end
