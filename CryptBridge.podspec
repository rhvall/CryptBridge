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
  path = "CryptBridgeModuleMap"
  s.xcconfig = { 'SWIFT_INCLUDE_PATHS[sdk=iphonesimulator*]' => '$(PODS_ROOT)/' + path + '/iphonesimulator/',
                 'SWIFT_INCLUDE_PATHS[sdk=iphoneos*]' => '$(PODS_ROOT)/' + path + '/iphoneos/' }
  s.preserve_paths  = "CryptBridgeModuleMap/*"
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3' }
  s.prepare_command = <<-CMD
                          mkdir -p CryptBridgeModuleMap/iphoneos
                          mkdir -p CryptBridgeModuleMap/iphonesimulator
                          cp CryptBridgeModuleMap/iphoneos.modulemap CryptBridgeModuleMap/iphoneos/module.modulemap
                          cp CryptBridgeModuleMap/iphonesimulator.modulemap CryptBridgeModuleMap/iphonesimulator/module.modulemap
                          CMD
end
