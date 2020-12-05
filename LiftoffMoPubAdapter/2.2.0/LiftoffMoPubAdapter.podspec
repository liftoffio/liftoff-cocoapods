# coding: utf-8
Pod::Spec.new do |spec|
  spec.name         = "LiftoffMoPubAdapter"
  spec.version      = "2.2.0"
  spec.summary      = "MoPub adapter for the LiftoffAds publisher SDK."
  spec.license      = { type: "Custom", text: <<-LICENSE
Grant of License

Subject to the terms and conditions of this Agreement, Liftoff grants You a non-exclusive, nontransferable,
royalty-free license to:

  a. install and use the SDK in object code form only to develop programs consisting of compiled code
     generated using the SDK, or any part thereof, designed to function with the Liftoff platform and other
     Liftoff products (“Developed Programs”);

  b. make a limited number of copies of the documentation to be used by Your employees or consultants for
     development purposes only, and not for general business purposes or for distribution; and

  c. distribute the SDK in object code form only as a component of Developed Programs.

2. Restrictions on Licensed Rights

You will not:

i. modify, disassemble, decompile, or reverse engineer any part of the SDK;

ii. copy (except for backup purposes and with all labeling and copyright notices intact) or otherwise
    reproduce the SDK, in whole or in part;

iii. modify, adapt, alter, translate, or incorporate into or with other software or create a derivative work
     of any part of the SDK, except as expressly permitted herein;

iv. remove, modify, or otherwise tamper with notices or legends on the SDK or any labeling on any physical
    media;

v. use the SDK in any manner to provide service bureau, time sharing, or other computer services to third
   parties;

vi. distribute the SDK (other than the incorporation of distributable elements of the SDK in Your Developed
    Programs in accordance with the terms of this Agreement);

vii. disclose the results of any performance benchmarks or similar testing of the SDK to any third party
     without Liftoff’s prior written consent;

viii. publish the SDK for others to copy; or

iv. use the SDK to develop applications for other platforms or to develop another SDK.
LICENSE
}

  spec.homepage     = "http://liftoff.io"
  spec.author       = { "Liftoff" => "support@liftoff.io" }
  spec.description  = <<-DESC
    This adapter allows publishers to use Liftoff's publisher SDK with MoPub
    mediation.
  DESC

  spec.platform     = :ios, "10.0"
  spec.source       = { http:    "https://github.com/liftoffio/LiftoffAds-iOS/releases/download/mopub-v2.2.0/LiftoffMoPubAdapter-v2.2.0-src.zip",
                        sha256:  "c6ddbcf92c9144067ed803d542da9d9fe71ab6b6840ea8c08ca77c05e6ea2b2c",
                        flatten: false }

  spec.requires_arc = true
  spec.dependency "mopub-ios-sdk", ">= 5.13"
  spec.dependency "LiftoffAds"

  spec.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e armv7 armv7s', 'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'i386 x86_64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e armv7 armv7s', 'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'i386 x86_64' }

  spec.swift_version = "5"

  spec.source_files  = "LiftoffMoPubAdapter/*.{h,m}"
  spec.public_header_files = "LiftoffMoPubAdapter/*.h"
end
