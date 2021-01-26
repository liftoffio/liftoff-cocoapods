# coding: utf-8
Pod::Spec.new do |spec|
  spec.name         = "LiftoffMoPubAdapter"
  spec.version      = "2.2.1"
  spec.summary      = "MoPub adapter for the LiftoffAds publisher SDK."
  spec.license      = { type: "Custom", file: "LICENSE" }
  spec.homepage     = "http://liftoff.io"
  spec.author       = { "Liftoff" => "sdk@liftoff.io" }
  spec.description  = <<-DESC
    This adapter allows publishers to use Liftoff's publisher SDK with MoPub
    mediation.
  DESC

  spec.platform     = :ios, "10.0"
  spec.source       = { http:    "https://github.com/liftoffio/LiftoffAds-iOS/releases/download/mopub-v2.2.1/LiftoffMoPubAdapter-v2.2.1-src.zip",
                        sha256:  "760d883a364435f460569a64cb0142910cddbc94dad3583987277e550b67ace1",
                        flatten: false }

  spec.requires_arc = true
  spec.dependency "mopub-ios-sdk"
  spec.dependency "LiftoffAds"

  spec.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e armv7 armv7s', 'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'i386 x86_64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e armv7 armv7s', 'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'i386 x86_64' }

  spec.swift_version = "5"

  spec.source_files  = "LiftoffMoPubAdapter/*.{h,m}"
  spec.public_header_files = "LiftoffMoPubAdapter/*.h"
end
