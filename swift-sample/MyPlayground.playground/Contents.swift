import UIKit


//-------------------------
// 制御: ループ系
//-------------------------

// for文
// C-style for statement has been removed in Swift 3
//for var i: Int = 0; i < 10; i++ {
//    この書き方が Swift3 から削除された
//}


// while
var i: Int = 0
while i < 5 {
    print("while: \(i)")
    i += 1
}




//-------------------------
// 制御: nil を安全に扱う
//-------------------------

// guard
func guardTest(int: Int?) {
    guard let g = int else {
        print("guard: nil")
        return
    }
    print("guard: \(g)")
}
guardTest(int: nil)
guardTest(int: 5)


// if
func ifTest(int: Int?) {
    if let v = int {
        print("if: \(v)")
        return
    }
    print("if: nil")
}
ifTest(int: nil)
ifTest(int: 5)




//-------------------------
// 配列 (Array)
//-------------------------

// 定義と同時に代入
var arr: [Int] = [345,876,34,90,2,78]

// 空の配列を作成
var arr2: [Int] = [Int]()

for v in arr {
//    print(v)
    // 追加
    arr2.append(v)
}

// 削除
arr2.remove(at: 3)
arr2.count
arr2.forEach { v in
    print(v)
}



//-------------------------
// 連想配列 (Dictionary)
//-------------------------
var map: Dictionary<String, String> = [
    "a": "あ",
    "i": "い",
    "u": "う",
    "e": "え",
    "o": "お",
]

map.forEach { (key: String, value: String) in
    print("\(key): \(value)")
}

