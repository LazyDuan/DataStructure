//
//  BinaryTree.swift
//  DataStructure
//
//  Created by LazyDuan on 2018/11/15.
//  Copyright © 2018 LazyDuan. All rights reserved.
//

import Foundation


class BinaryTree: NSObject {
    var rootNode: AnyObject?
    var leftNode: AnyObject?
    var rightNode: AnyObject?
    class func newTree(rootNode: AnyObject?,leftNode: AnyObject?,rightNode: AnyObject?) -> BinaryTree {
        let tree = BinaryTree.init()
        tree.rootNode = rootNode
        tree.leftNode = leftNode
        tree.rightNode = rightNode
        return tree
        
    }
    
    //先序遍历
    class func traverseTreeByPreorder(tree:BinaryTree) -> String {
        var results:String = ""
        results.append(tree.rootNode as! String)
        if tree.leftNode != nil {
            let str = traverseTreeByPreorder(tree: tree.leftNode as! BinaryTree)
            results.append(str as String)
        }
        if tree.rightNode != nil {
            let str = traverseTreeByPreorder(tree: tree.rightNode as! BinaryTree)
            results.append(str as String)
        }
        return results
        
    }
    //中序遍历
    class func traverseTreeByInorder(tree:BinaryTree) -> String {
        var results :String = ""
        
        if tree.leftNode != nil {
            let str = traverseTreeByInorder(tree: tree.leftNode as! BinaryTree)
            results.append(str)
        }
        results.append(tree.rootNode as! String)
        if tree.rightNode != nil {
            let str = traverseTreeByInorder(tree: tree.rightNode as! BinaryTree)
            results.append(str)
        }
        return results
    }
    //后序遍历
    class func traverseTreeByPostorder(tree:BinaryTree) -> String {
        var results :String = ""
        
        if tree.leftNode != nil {
            let str = traverseTreeByPostorder(tree: tree.leftNode as! BinaryTree)
            results.append(str)
        }
        if tree.rightNode != nil {
            let str = traverseTreeByPostorder(tree: tree.rightNode as! BinaryTree)
            results.append(str)
        }
        results.append(tree.rootNode as! String)
        return results
    }
}





