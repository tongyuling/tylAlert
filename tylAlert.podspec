Pod::Spec.new do |s|
s.name = 'tylAlert'
s.version = '0.0.2'
s.license = 'MIT'
s.summary = 'A Text in iOS.'
s.homepage = 'https://github.com/tongyuling/tylAlert'
s.authors = { 'tyl' => '1094221200@qq.com' }
s.source = { :git => "https://github.com/tongyuling/tylAlert.git", :tag => "v#{s.version}"}
s.requires_arc = true
s.ios.deployment_target = '8.0'
s.source_files = "tylAlert/TYLAlertView", "*.{h,m}"
end
