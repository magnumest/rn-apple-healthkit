require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'RNAppleHealthKit'
  s.version      = package['version']
  s.summary      = package['description']
  s.description  = package['description']
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.author       = package['author']
  s.source       = { :git => 'https://github.com/magnumest/rn-apple-healthkit.git', :tag => "yas-features" }

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.2'
  s.source_files = 'RCTAppleHealthKit/**/*'
  s.frameworks = ['HealthKit']
  s.dependency 'React'
end
