Pod::Spec.new do |s|
    s.name         = "RNHelpshift"
    s.version      = "2.0.0"
    s.summary      = "RNHelpshift"
    s.description  = "RNHelpshift Module"
    s.homepage     = "https://www.npmjs.com/package/react-native-hs"
    s.license      = "Public"
    s.author       = { "Vinicius Marson" => "" }
    s.source       = { :git => "git@github.com:viniciusmarson/react-native-hs.git", :tag => "#{s.version}" }
    s.source_files = "ios/**/*.{swift,h,m}"
    s.ios.deployment_target  = '10.0'
  
    s.dependency 'React'
    s.dependency 'React-Core'
    s.dependency 'React-CoreModules'
    s.dependency 'React-Core/DevSupport'
    s.dependency 'React-RCTActionSheet'
    s.dependency 'React-RCTAnimation'
    s.dependency 'React-RCTBlob'
    s.dependency 'React-RCTImage'
    s.dependency 'React-RCTLinking'
    s.dependency 'React-RCTNetwork'
    s.dependency 'React-RCTSettings'
    s.dependency 'React-RCTText'
    s.dependency 'React-RCTVibration'
    s.dependency 'React-Core/RCTWebSocket'

    s.dependency 'Helpshift'
  end
