// Playground - noun: a place where people can play

import UIKit

var hexStr:String = "AA223344"
var hex:UInt32 = 0x0;
var scanner:NSScanner = NSScanner(string: hexStr)
scanner.scanHexInt(&hex)
hex
println(hex)


let red :CGFloat = CGFloat(((hex & 0xff000000) >> 24))/225.0
let green :CGFloat = CGFloat(((hex & 0x00ff0000) >> 16))/225.0
let blue :CGFloat = CGFloat(((hex & 0x0000ff00) >> 8))/225.0
let alpha :CGFloat = CGFloat((hex & 0x000000ff))/225.0

var col : UIColor = UIColor(red: red, green: green, blue: blue, alpha: alpha)


println(red)

//var st = NSString(format:"%d", hex) as String
//2854368068
//
////var col : UIColor = UIColor(hexString:hex)
//var a = st.toInt()! & 0xff000000
//
//var red = NSString(format:"%2X", a) as String
//println(red)
//var red = (( hex.toInt()! & 0xff000000) >> 24)


/*
+ (UIColor*)colorWithHex:(uint32_t)hex {
CGFloat red = ((hex & 0xff000000) >> 24) / 255.0f;
CGFloat green = ((hex & 0x00ff0000) >> 16) / 255.0f;
CGFloat blue = ((hex & 0x0000ff00) >> 8) / 255.0f;
CGFloat alpha = (hex & 0x000000ff) / 255.0f;

*/

class SampleClass {
    
}

extension SampleClass {
class func testFunc(a:String){
    println("String")
}

class func testFunc(a:Int){
    println("Int")
}
}

SampleClass.testFunc("TEST")
SampleClass.testFunc(123)

println("a")
