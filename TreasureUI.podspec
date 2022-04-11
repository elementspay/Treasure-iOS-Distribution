Pod::Spec.new do |spec|
  framework_filename = "Treasure.xcframework"

  spec.name = "TreasureUI"
  spec.version = "1.0.0"
  spec.summary = "Treasure iOS SDK"
  spec.description = <<-DESC
    Treasure official SDK
                   DESC
  spec.homepage = "https://github.com/elementspay/Elements-iOS-Demo"
  spec.license = { :type => 'MIT', :file => 'LICENSE' }
  spec.author = { "Marvin Zhan" => "marvin@elements.io" }
  spec.platform = :ios
  spec.ios.deployment_target = "12.0"
  spec.swift_version = '5.1'

  spec.source = { :git => "https://github.com/elementspay/Treasure-iOS-Distribution.git", :tag => spec.version }

  spec.frameworks = 'Foundation'
  spec.default_subspecs = 'Core'
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'SWIFT_SUPPRESS_WARNINGS' => 'YES' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  spec.dependency = 'BlocksCore'

  spec.subspec 'Core' do |plugin|
    plugin.vendored_frameworks = 'Treasure.xcframework'
  end
end
