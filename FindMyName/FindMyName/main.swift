//
//  main.swift
//  FindMyName
//
//  Created by Charles Kang on 1/28/16.
//  Copyright © 2016 Charles Kang. All rights reserved.
//

import Foundation

func findFile(name: String, atPath: String) -> String {
    let fileManager = NSFileManager.defaultManager()
    let contents =
    try! fileManager.contentsOfDirectoryAtPath(atPath)
    for fileOrDir in contents {
        var isDir = ObjCBool(false);
        let fullPath = atPath + "/" + fileOrDir
        let exists = fileManager.fileExistsAtPath(fullPath, isDirectory: &isDir)
        if exists && Bool(isDir) {
            
            print("DIR: " + fileOrDir)
        } else if exists {
            // YOUR CODE HERE
            print("FILE: " + fileOrDir)
        } else {
            print("NEITHER: " + fileOrDir)
        }
    }
    return "NOT FOUND"
}

print(findFile("awesome-idea.txt", atPath: "/Users/charleshyowonkang/Documents"))


func mergeSort(left: [Int], _ right: [Int]) -> [Int] {
    return [] // change this
}



