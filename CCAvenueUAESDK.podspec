Pod::Spec.new do |s|
  s.name             = 'CCAvenueUAESDK'
  s.version          = '1.0.2'
  s.summary          = 'Secure Payment SDK for iOS'
  s.description      = 'CCAvenueUAESDK provides secure payment processing via WebView and native flows.'
  s.homepage         = 'https://github.com/manoranjannayak03/CCAvenueUAESDK'
  s.license          = { :type => 'Commercial', :text => 'Copyright © 2026' }
  s.author           = { 'manoranjan' => 'manoranjannayak03@gmail.com' }

  s.platform         = :ios, '13.0'
  s.swift_version    = '5.7'

  s.source = {
    :git => 'https://github.com/manoranjannayak03/CCAvenueUAESDK.git',
    :tag => s.version.to_s
  }

  s.vendored_frameworks = 'CCAvenueUAESDK.xcframework'
  s.requires_arc = true
end
