//
//  Sort.swift
//  DataStructure
//
//  Created by LazyDuan on 2018/11/15.
//  Copyright © 2018 LazyDuan. All rights reserved.
//

import Foundation

//插入排序-直接插入排序
func insertSort(arr:Array<Int>,count:Int) -> Array<Int> {
    var array: [Int] = arr
    
    for i in 1..<count {
        if array[i] < array[i-1]{
            var j = i-1
            let value = array[i]
            array[i] = array[i-1]
            while (value < array[j]){
                
                array[j+1] = array[j]
                j = j-1
                if(j<0){
                    break
                }
            }
            array[j+1] = value
        }
    }
    return array
}
//插入排序-希尔排序
func shellSort(arr:Array<Int>,count:Int) -> Array<Int> {
    var array: [Int] = arr
    var dk = count/2    //增量
    while dk>=1 {
        for i in dk..<count{
            if(array[i] < array[i-dk]){
                var j = i - dk
                let value = array[i]
                array[i] = array[i-dk]
                while value<array[j]{
                    array[j+dk] = array[j]
                    j = j - dk
                    if(j<0){
                        break
                    }
                }
                array[j+dk] = value;
                
            }
        }
        dk = dk/2
    }
    return array
    
}

//选择排序-简单选择排序
func selectSort(arr:Array<Int>,count:Int) -> Array<Int>{
    var array: [Int] = arr
    for i in 0..<count {
        let minKey = selectMinKey(arr: array, count: count, index: i)
        if minKey != i{
            let temp = array[i]
            array[i] = array[minKey]
            array[minKey] = temp
            
        }
        //print(array)
    }
    return array
}
/*
 *查询数组中最小值的Key
 *
 *@return int 数组的键值
 **/
func selectMinKey(arr:Array<Int>,count:Int,index:Int) -> Int{
    var key = index
    let s = index+1
    for i in s..<count {
        if arr[key]>arr[i]{
            key = i;
        }
    }
    return key
}

//简单选择排序的优化-二元选择排序
func binarySelectSort(arr:Array<Int>,count:Int) -> Array<Int>{
    var array: [Int] = arr
    var temp:Int = 0
    let limit = (count+1)/2
    for i in 0..<limit {
        var min = i
        var max = i
        for j in i..<count-i{
            if(array[j]>array[max]){
                max = j
            }
            if array[j] < array[min]{
                min = j;
            }
        }
        temp = array[i];array[i] = array[min];array[min] = temp;
        if(i == max){
            max = min
        }
        if(array[max]>array[count-i-1]){
            temp = array[count-i-1];array[count-i-1] = array[max];array[max] = temp;
        }
        
    }
    return array
}
//选择排序-堆排序
func heapSort(arr:Array<Int>,count:Int) -> Array<Int>{
    var array: [Int] = arr
    //初始化堆
    for i in (0...(count-1)/2).reversed(){
       array = heapAdjust(arr: array, s: i, length: count)
    }
    for j in (0...count-1).reversed(){
        let temp = array[j]
        array[j] = array[0]
        array[0] = temp
        array = heapAdjust(arr: array, s: 0, length: j)
    }
    return array
}
func heapAdjust(arr:Array<Int>,s:Int,length:Int) -> Array<Int>{
    var array: [Int] = arr
    let temp = arr[s]
    var root = s
    var child = 2*root + 1
    while child < length{
        if child+1 < length && array[child] < array[child+1]{
            child = child + 1
        }
        
        if array[root] < array[child]{
            array[root] = array [child]
            root = child
            child = 2*root + 1
        
        }else{
            break;
        }
        array[root] = temp
    }
    return array;
}

//交换排序-冒泡排序
func bubbleSort(arr:Array<Int>,count:Int) -> Array<Int>{
    var array: [Int] = arr
    for i in 0..<count-1 {
        for j in 0..<count-i-1{
            if array[j] > array[j+1]{
                let temp = array[j]
                array[j] = array[j+1]
                array[j+1] = temp
            }
            //print(array)
            
        }
    }
    //初始化堆
    return array
}

//交换排序-快速排序
func quickSort(arr:Array<Int>,begin:Int,end:Int) -> Array<Int>{
    var array: [Int] = arr
    var privotLow = 0
    
    if begin < end {
        (array,privotLow) = partition(arr: array, begin: begin, end: end)
        //print(array)
        array = quickSort(arr: array, begin: begin, end: privotLow-1);
        array = quickSort(arr: array, begin: privotLow+1, end: end);
    }
    return array
}

func partition(arr:Array<Int>,begin:Int,end:Int) -> (Array<Int>,Int){
    var array: [Int] = arr
    let privotKey = array[begin]
    var low = begin
    var high = end
    while low < high {
        while low < high && array[high] >= privotKey{
            high = high - 1
        }
        let temp = array[low]
        array[low] = array[high]
        array[high] = temp
        while low < high && array[low] <= privotKey {
            low = low + 1
        }
        let tmp = array[low]
        array[low] = array[high]
        array[high] = tmp
    }
        
    return (array,low)
    
}


//归并排序
func mergeSort(arr:Array<Int>,count:Int) -> Array<Int>{
    var array: [Int] = arr
    //初始化堆
    return array
}

func merge(arr:Array<Int>,)

//基数排序
func radixSort(arr:Array<Int>,count:Int) -> Array<Int>{
    var array: [Int] = arr
    //初始化堆
    return array
}
