# coding: utf-8
Pod::Spec.new do |spec|
  spec.name         = "LiftoffAds"
  spec.version      = "1.2.2"
  spec.summary      = "The LiftoffAds publisher SDK."
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
    This SDK allows publishers to monitize their apps with banners, mrect,
    and interstitial ads served by Liftoff.
  DESC

  spec.platform            = :ios, "10.0"
  spec.source              = { http:    "https://github.com/liftoffio/LiftoffAds-iOS/releases/download/v1.2.2/LiftoffAds-v1.2.2.zip",
                               sha256:  "27a722d5f5af6911dc5392dc97091a991aea56ddf894a88967a7326080f519a5",
                               flatten: false }
  spec.vendored_frameworks = "LiftoffAds.xcframework"
  spec.swift_version       = "5"
  spec.cocoapods_version   = ">= 1.10"
end
