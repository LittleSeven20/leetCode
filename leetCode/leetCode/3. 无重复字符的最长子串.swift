//
//  3. 无重复字符的最长子串.swift
//  leetCode
//
//  Created by dlf on 2022/9/2.
//

import Foundation
/**给定一个字符串 s ，请你找出其中不含有重复字符的 最长子串 的长度。
 输入: s = "abcabcbb"
 输出: 3
 解释: 因为无重复字符的最长子串是 "abc"，所以其长度为 3。
 */
class Solution3 {
   static func lengthOfLongestSubstring(_ s: String) -> Int {
        if s.isEmpty { return 0 }
        var maxStr = ""
        var curStr = ""
        for c in s {
            while curStr.contains(c) {
                curStr.remove(at: curStr.startIndex)
            }
            curStr.append(c)
            if curStr.count > maxStr.count {
                maxStr = curStr
            }
            print("curStr   \(curStr)   maxStr  \(maxStr)" )
        }
        return maxStr.count
    }
}
