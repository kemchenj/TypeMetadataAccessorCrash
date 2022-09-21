//
//  MetadataAccessorCrashApp.swift
//  MetadataAccessorCrash
//
//  Created by kemchenj on 2022/9/20.
//

import SwiftUI

#if canImport(RoomPlan)

import RoomPlan

@available(iOS 16, *)
class Foo: NSObject {
  var bar: CapturedRoom?
}

#endif

@main
struct MetadataAccessorCrashApp: App {
  var body: some Scene {
    WindowGroup {
      Text("")
        .onAppear {
          // Crash here
          let _ = objc_getClassList(nil, 0)
        }
    }
  }
}
