# coding: utf-8
Pod::Spec.new do |spec|
  spec.name         = "LiftoffMoPubAdapter"
  spec.version      = "2.3.0"
  spec.summary      = "MoPub adapter for the LiftoffAds publisher SDK."
  spec.license      = { type: "Custom", file: "LICENSE" }
  spec.homepage     = "http://liftoff.io"
  spec.author       = { "Liftoff" => "sdk@liftoff.io" }
  spec.description  = <<-DESC
    This adapter allows publishers to use Liftoff's publisher SDK with MoPub mediation.
  DESC

  spec.platform     = :ios, "10.0"
  spec.source       = { http:    "https://github.com/liftoffio/LiftoffAds-iOS/releases/download/mopub-v2.3.0/LiftoffMoPubAdapter-v2.3.0-src.zip",
                        sha256:  "a96bfd2985aa2caed01be15b12ffa9d672421b8fc0264d46df8fc6a58538def7",
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
