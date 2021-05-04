//
//  DispatchQueue.swift
//  Assessment
//
import Foundation

@inline(__always) func Synchronized(_ lock: Any, closure: () -> ()) {
    objc_sync_enter(lock)
    closure()
    objc_sync_exit(lock)
}

extension DispatchQueue {
    
    class var background: DispatchQueue {
        let filePath = URL(fileURLWithPath: #file)
        let lastComponenet = filePath.lastPathComponent
        let queueName = "\(lastComponenet).\(#function)"
        return DispatchQueue(label: queueName)
    }
    
    func async(after delay: TimeInterval, execute: @escaping () -> Void) {
        asyncAfter(deadline: .now() + delay, execute: execute)
    }
}
