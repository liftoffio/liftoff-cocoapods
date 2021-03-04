# coding: utf-8
Pod::Spec.new do |spec|
  spec.name         = "LiftoffAds"
  spec.version      = "1.4.0"
  spec.summary      = "The LiftoffAds publisher SDK."
  spec.license      = { type: "Custom", file: "LICENSE" }
  spec.homepage     = "http://liftoff.io"
  spec.author       = { "Liftoff" => "sdk@liftoff.io" }
  spec.description  = <<-DESC
    This SDK allows publishers to monetize their apps with banner, mrect, and interstitial ads served by Liftoff.
  DESC

  spec.platform            = :ios, "10.0"
  spec.source              = { http:    "https://github.com/liftoffio/LiftoffAds-iOS/releases/download/v1.4.0/LiftoffAds-v1.4.0.zip",
                               sha256:  "55306d59f13ed018362fb3363060205ca05a920200d87c5bf7fc1f3af46c764c",
                               flatten: false }
  spec.vendored_frameworks = "LiftoffAds.xcframework"
  spec.swift_version       = "5"
  spec.cocoapods_version   = ">= 1.10"
end
