//
//  两数相加.swift
//  leetCode
//
//  Created by dlf on 2022/9/1.
//

import Foundation
/*给你两个非空的链表，表示两个非负的整数。它们每位数字都是按照 逆序 的方式存储的，并且每个节点只能存储一位数字。
请你将两个数相加，并以相同形式返回一个表示和的链表。
你可以假设除了数字0之外，这两个数都不会以0开头。*/
//Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


class Solution2 {
   static func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
       var l1 = l1, l2 = l2
       var needAddOne = 0
       let dumy = ListNode()
       var head = dumy
       while l1 != nil || l2 != nil {
           let value = (l1?.val ?? 0) + (l2?.val ?? 0) + needAddOne
           head.next = ListNode(value % 10)
           needAddOne = value / 10
           head = head.next!
           l1 = l1?.next
           l2 = l2?.next
       }
       if needAddOne == 1 {
           head.next = ListNode(1)
       }
       return dumy.next
    }
}
