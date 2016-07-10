Pod::Spec.new do |s|
s.name             = 'NEUInvisibleSafariManager'
s.version          = '0.1.0'
s.summary          = 'iOS Objective-C library for sending invisible SFSafariViewController.'
s.description      = <<-DESC
iOS Objective-C library for sending invisible SFSafariViewController request with completion and parameters.
DESC
s.homepage         = 'https://github.com/nikitapankiv/NEUInvisibleSafariManager'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Nikita Pankiv' => 'nik.pankiv@gmail.com' }
s.source           = { :git => 'https://github.com/nikitapankiv/NEUInvisibleSafariManager.git', :tag => s.version.to_s }
s.ios.deployment_target = '9.0'
s.source_files = 'NEUInvisibleSafariManager/Classes/**/*'
end
