# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'

# Ignore all warnings from all pods
inhibit_all_warnings!

use_frameworks!(true)

# Pods for WavesSDK
target 'WavesSDK' do

    inherit! :search_paths

    pod 'RxSwift'
    pod 'RxReachability'
    pod '25519', :git => 'https://github.com/wavesplatform/25519.git'
    pod 'Base58', :git => 'https://github.com/wavesplatform/Base58.git'
    pod 'Keccak', :git => 'https://github.com/wavesplatform/Keccak.git'
    pod 'Blake2', :git => 'https://github.com/wavesplatform/Blake2.git'
    pod 'CryptoSwift'

end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        
        target.build_configurations.each do |config|

            config.build_settings['GCC_WARN_INHIBIT_ALL_WARNINGS'] = "YES"
            config.build_settings['SWIFT_VERSION'] = '4.2'
            
        end        
    end
end
