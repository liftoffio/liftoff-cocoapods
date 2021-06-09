# coding: utf-8
Pod::Spec.new do |spec|
  spec.name         = "LiftoffAds"
  spec.version      = "1.6.1"
  spec.summary      = "The LiftoffAds publisher SDK."
  spec.license      = { type: "Custom", file: "LICENSE" }
  spec.homepage     = "http://liftoff.io"
  spec.author       = { "Liftoff" => "sdk@liftoff.io" }
  spec.description  = <<-DESC
    This SDK allows publishers to monetize their apps with banner, mrect, and interstitial ads served by Liftoff.
  DESC

  spec.platform            = :ios, "10.0"
  spec.source              = { http:    "https://github.com/liftoffio/LiftoffAds-iOS/releases/download/v1.6.1/LiftoffAds-v1.6.1.zip",
                               sha256:  "fdee573dd4d30607efa4862a9536333f60e56faeb4c348d15077972ce7a32c29",
                               flatten: false }
  spec.vendored_frameworks = "LiftoffAds.xcframework"
  spec.swift_version       = "5"
  spec.cocoapods_version   = ">= 1.10"
end
