require 'json'
package_json = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
    s.name         = "RNHelpshift"
    s.summary      = "RNHelpshift"
    s.version      = package_json["version"]
    s.description  = "RNHelpshift Module"
    s.homepage     = "https://www.npmjs.com/package/react-native-hs"
    s.license      = "Public"
    s.author       = { "Vinicius Marson" => "" }
    s.source       = { :git => "git@github.com:viniciusmarson/react-native-hs.git", :tag => "#{s.version}" }
    s.source_files = "ios/**/*.{swift,h,m}"
    s.preserve_paths = "*.js"
    s.ios.deployment_target  = '10.0'
  
    s.dependency 'React'
    s.dependency 'Helpshift'
  end
