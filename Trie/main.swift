//
//  main.swift
//  Trie
//
//  Created by Vikas Mall on 4/24/19.
//  Copyright © 2019 Vikas Mall. All rights reserved.
//

import Foundation

print("Hello, World!")

let tr = Trie()
tr.insert("apple")
print(tr.search("apple"))
print(tr.search("app"))
print(tr.startsWith("app"))
tr.insert("app")
print(tr.search("app"))
