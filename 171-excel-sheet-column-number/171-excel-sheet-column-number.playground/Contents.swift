/**
给定一个Excel表格中的列名称，返回其相应的列序号。

例如，

A -> 1
B -> 2
C -> 3
...
Z -> 26
AA -> 27
AB -> 28 
...

示例 1:
输入: "A"
输出: 1

示例 2:
输入: "AB"
输出: 28

示例 3: 
输入: "ZY"
输出: 701

思路：26进制转10进制
 
时间复杂度：O(n)
空间复杂度：O(1)
 */

import Foundation

class Solution {
    func titleToNumber(_ s: String) -> Int {
        var res = 0
        let scalarsOfA = "A".unicodeScalars
        for char in Array(s) {
            let count = countBetween(char: char, scalarsOfA: scalarsOfA)
            res = res * 26 + count
        }
        return res
    }

    func countBetween(char: Character, scalarsOfA: String.UnicodeScalarView) -> Int {
        let scalars = String(char).unicodeScalars
        return Int(scalars[scalars.startIndex].value - scalarsOfA[scalarsOfA.startIndex].value) + 1
    }
}
