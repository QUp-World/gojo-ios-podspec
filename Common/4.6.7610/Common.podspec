Pod::Spec.new do |s|
    s.name         = "Common"
    s.version      = "4.6.7610"
    s.summary      = "Common"
    s.description  = <<-DESC
    Pegasus Common will be used for our apps: Pasenger, Driver, Crew
    DESC
    s.homepage     = "https://goodjourney.io"
    s.license      = "MIT"
    s.author       = {
        "GOJO" => ""
    }

    s.cocoapods_version = '>= 1.15.2'
    s.platform     = :ios, "13.0"
    s.source       = {
        :git => "https://github.com/QUp-World/qup-ios-lib.git",
        :tag => "#{s.version}"
    }
    s.source_files  = ""
    s.exclude_files = "Common/Tests/*.*", "Common/Tests/**/*.*", "Common/Common/Classes/UI"
    s.ios.resource_bundle = {
        'CommonResources' => [
            'Common/CommonResources/DynamicUI/**/*.xib',
            'Common/CommonResources/DynamicUI/**/*.storyboard',
            'Common/CommonResources/Voip/**/*.{storyboard,xib}',
            'Common/CommonResources/Voip/linphonerc*',
            'Common/CommonResources/ImageAssets/*.xcassets',
            'Common/CommonResources/Storyboards/*.storyboard',
            'Common/CommonResources/Xibs/CommonView/*.xib',
            'Common/CommonResources/Xibs/Marker/*.xib',
            'Common/CommonResources/Configs/*.json',
        ]
    }

    s.static_framework = true
    s.default_subspec   = 'AllSubspecs'

    s.subspec 'AllSubspecs' do |ss|
        ss.dependency "Common/Base"
        ss.dependency "Common/3rdParty"
        ss.dependency "Common/UIKit"
        ss.dependency "Common/Network"
        ss.dependency "Common/Database"
        ss.dependency "Common/MapProvider"
        ss.dependency "Common/AppBanner"
        ss.dependency "Common/DynamicUI"
    end

    s.subspec 'Base' do |ss|
        ss.source_files = "Common/Common/Classes/Utils/**/*.{swift}", "Common/Common/Classes/Model/**/*.{swift}", "Common/Common/Classes/Base/**/*.{swift}"

        ss.dependency "CocoaLumberjack/Swift", "3.8.2"
        ss.dependency "Alamofire", "5.10.2"
        ss.dependency "FirebaseCore", "10.29.0"
        ss.dependency "FirebaseAnalytics", "10.29.0"
        ss.dependency "FirebaseMessaging", "10.29.0"
        ss.dependency "FirebasePerformance", "10.29.0"
        ss.dependency "FirebaseCrashlytics", "10.29.0"
        ss.dependency "SwiftyUserDefaults", "4.0.0"
        ss.dependency "PhoneNumberKit", "3.0.0"
        ss.dependency "KeychainAccess", "4.2.2"
        ss.dependency "CryptoSwift", "1.8.1"
        ss.dependency "ReachabilitySwift", "5.2.4"
    end

    s.subspec '3rdParty' do |ss|
        ss.source_files = "Common/Common/Classes/3rdParty/**/*.{swift}"
    end

    s.subspec 'UIKit' do |ss|
        ss.source_files = "Common/Common/Classes/UI/**/*.{swift}"

        ss.dependency "Common/Base"

        ss.dependency "PKHUD", "5.3.0"
        ss.dependency "Kingfisher", "7.12.0"
        ss.dependency "Material", "3.1.8"
    end

    s.subspec 'Database' do |ss|
        ss.source_files = "Common/Common/Classes/Database/**/*.{swift}"

        ss.dependency "Common/Base"

        ss.dependency "CouchbaseLite-Swift", "2.7.1"
    end

    s.subspec 'Network' do |ss|
        ss.source_files = "Common/Common/Classes/Network/**/*.{swift}"

        ss.dependency "Common/Base"

        ss.dependency "Alamofire", "5.10.2"
        ss.dependency "Socket.IO-Client-Swift", "16.1.1"
        # ss.dependency "AWSIoT", "2.27.4"
    end

    s.subspec 'MapProvider' do |ss|
        ss.source_files = "Common/Common/Classes/MapProvider/**/*.{swift}"

        ss.dependency "Common/Base"
        ss.dependency "Common/Network"

        ss.dependency "GoogleMaps", "6.2.1"
        ss.dependency "Google-Maps-iOS-Utils", "~> 3.10.3"
        ss.dependency "Polyline", "5.1.0"
        ss.dependency "MapLibre", "6.12.0"
    end

    s.subspec 'AppBanner' do |ss|
        ss.source_files = "Common/Common/Classes/AppBanner/**/*.{swift}"

        ss.dependency "Common/Base"
        ss.dependency "Common/Network"
    end

    s.subspec 'DynamicUI' do |ss|
        ss.source_files = "Common/Common/Classes/DynamicUI/**/*.{swift}"

        ss.dependency "Common/Base"
        ss.dependency 'UITextView+Placeholder', '1.4.0'
    end

    s.subspec 'Voip' do |ss|
        ss.source_files = "Common/Common/Classes/Voip/**/*.{swift}"

        ss.dependency "Common/Base"
        ss.dependency "linphone-sdk", '5.3.48'
    end

end
