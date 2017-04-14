Pod::Spec.new do |s|
  s.name         = "CryptBridge"
  s.version      = "0.1"
  s.summary      = "Common Crypto wrapper to Swift"
  s.description  = "Enable Swift projects to use common crypto functions"
  s.homepage     = "https://github.com/rhvall/CryptBridge.git"
  s.license      = { :type => "Apache", :file => "FILE_LICENSE" }
  s.author       = 'rhvall'
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/rhvall/CryptBridge.git", :tag => "#{s.version}" }
  s.source_files = '*.{h,m,swift}'
  s.exclude_files = "Exclude"
  s.ios.deployment_target = '9.0'
  # s.osx.deployment_target = '10.9'
  # s.tvos.deployment_target = '10.1'
  s.pod_target_xcconfig = {
    'SWIFT_INCLUDE_PATHS[sdk=macosx*]'           => '$(PODS_ROOT)/CryptBridge/CryptBridgeModuleMap/macosx',
    'SWIFT_INCLUDE_PATHS[sdk=iphoneos*]'         => '$(PODS_ROOT)/CryptBridge/CryptBridgeModuleMap/iphoneos',
    'SWIFT_INCLUDE_PATHS[sdk=iphonesimulator*]'  => '$(PODS_ROOT)/CryptBridge/CryptBridgeModuleMap/iphonesimulator',
    'SWIFT_INCLUDE_PATHS[sdk=appletvos*]'        => '$(PODS_ROOT)/CryptBridge/CryptBridgeModuleMap/appletvos',
    'SWIFT_INCLUDE_PATHS[sdk=appletvsimulator*]' => '$(PODS_ROOT)/CryptBridge/CryptBridgeModuleMap/appletvsimulator',
    'SWIFT_INCLUDE_PATHS[sdk=watchos*]'          => '$(PODS_ROOT)/CryptBridge/CryptBridgeModuleMap/watchos',
    'SWIFT_INCLUDE_PATHS[sdk=watchsimulator*]'   => '$(PODS_ROOT)/CryptBridge/CryptBridgeModuleMap/watchsimulator'
  }
  s.preserve_paths  = "CryptBridgeModuleMap/*"
end
