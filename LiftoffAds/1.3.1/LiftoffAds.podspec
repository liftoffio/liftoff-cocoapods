# coding: utf-8
Pod::Spec.new do |spec|
  spec.name         = "LiftoffAds"
  spec.version      = "1.3.1"
  spec.summary      = "The LiftoffAds publisher SDK."
  spec.license      = { type: "Custom", file: "LICENSE" }
  spec.homepage     = "http://liftoff.io"
  spec.author       = { "Liftoff" => "sdk@liftoff.io" }
  spec.description  = <<-DESC
    This SDK allows publishers to monitize their apps with banners, mrect,
    and interstitial ads served by Liftoff.
  DESC

  spec.platform            = :ios, "10.0"
  spec.source              = { http:    "https://github.com/liftoffio/LiftoffAds-iOS/releases/download/v1.3.1/LiftoffAds-v1.3.1.zip",
                               sha256:  "24eb1ea793151a4a495a027a7701f4e9bfa8962ee6c773cb61487e12ed26f1e9",
                               flatten: false }
  spec.vendored_frameworks = "LiftoffAds.xcframework"
  spec.swift_version       = "5"
  spec.cocoapods_version   = ">= 1.10"
end
