//
//  main.swift
//  DataStructure
//
//  Created by LazyDuan on 2018/11/15.
//  Copyright © 2018 LazyDuan. All rights reserved.
//

import Foundation


print("Hello, World!")

//二叉树的创建
let tree = BinaryTree.newTree(rootNode: "A" as AnyObject,
                              leftNode: BinaryTree.newTree(rootNode: "B" as AnyObject,
                                                           leftNode: BinaryTree.newTree(rootNode: "D" as AnyObject, leftNode: nil, rightNode: nil),
                                                           rightNode: BinaryTree.newTree(rootNode: "F" as AnyObject,
                                                                                         leftNode: BinaryTree.newTree(rootNode: "E" as AnyObject, leftNode: nil, rightNode: nil),
                                                                                         rightNode: nil)),
                              rightNode: BinaryTree.newTree(rootNode: "C" as AnyObject,
                                                            leftNode: BinaryTree.newTree(rootNode: "G" as AnyObject, leftNode: nil, rightNode: BinaryTree.newTree(rootNode: "H" as AnyObject, leftNode: nil, rightNode: nil)),
                                                            rightNode: BinaryTree.newTree(rootNode: "I" as AnyObject, leftNode: nil, rightNode: nil)))

let preResult = BinaryTree.traverseTreeByPreorder(tree: tree)
print(preResult)
let inResult = BinaryTree.traverseTreeByInorder(tree: tree)
print(inResult)
let postResult = BinaryTree.traverseTreeByPostorder(tree: tree)
print(postResult)

//插入排序
var array:[Int] = [3,1,5,7,2,4,9,6,10,8]
//var array:[Int] = [49,38,65,97,76,13,27]
let insertSortResult = insertSort(arr: array, count: array.count)
//print(insertSortResult)
let shellSortResult = shellSort(arr: array, count: array.count)
//print(shellSortResult)
let selectSortResult = selectSort(arr: array, count: array.count)
//print(selectSortResult)
let binarySelectSortResult = binarySelectSort(arr: array, count: array.count)
//print(binarySelectSortResult)

let heapSortResult = heapSort(arr: array, count: array.count)
//print(heapSortResult)

let bubbleSortResult = bubbleSort(arr: array, count: array.count)
//print(bubbleSortResult)
let quickSortResult = quickSort(arr: array, begin: 0, end: 9)
print(quickSortResult)
