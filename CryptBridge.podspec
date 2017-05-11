Pod::Spec.new do |s|
  s.name         = "CryptBridge"
  s.version      = "0.1.4"
  s.summary      = "Common Crypto wrapper to Swift"
  s.description  = "Enable Swift projects to use common crypto functions"
  s.homepage     = "https://github.com/rhvall/CryptBridge.git"
  s.license      = { :type => "Apache", :file => "LICENSE" }
  s.author       = 'rhvall'
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/rhvall/CryptBridge.git", :tag => "#{s.version}" }
  s.source_files = '*.{h,m,swift}'
  s.exclude_files = "Exclude"
  s.ios.deployment_target = '9.0'
  # s.osx.deployment_target = '10.9'
  # s.tvos.deployment_target = '10.1'
  s.pod_target_xcconfig = {
    'SWIFT_INCLUDE_PATHS' => '$(PODS_ROOT)/CryptBridge/CryptBridgeModuleMap'
  }
  s.preserve_paths  = "CryptBridgeModuleMap/**/*"
end
