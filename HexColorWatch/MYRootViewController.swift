//
//  MYRootViewController.swift
//  HexColorWatch
//
//  Created by Mika Yamamoto on 2014/06/24.
//  Copyright (c) 2014年 Mika Yamamoto. All rights reserved.
//

import UIKit

class MYRootViewController: UIViewController {
    
    var backGroundView:UIView?
    var hexWatchLabel:UILabel?
    var timer:NSTimer?
    
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle!) {
        super.init(nibName:nibNameOrNil, bundle:nibBundleOrNil)
        let mainRect = UIScreen.mainScreen().bounds
        
        self.backGroundView = UIView(frame:mainRect)
        self.backGroundView!.backgroundColor = UIColor.redColor()
        self.view!.addSubview(self.backGroundView)
        
        self.timer = NSTimer.scheduledTimerWithTimeInterval(0.01,target:self, selector:"onTimer:", userInfo:nil, repeats:true)
        
        self.hexWatchLabel = UILabel(frame:CGRectMake(10,mainRect.size.height/2-50 , mainRect.size.width-10, 100))
        self.hexWatchLabel!.font = UIFont(name:"Apple SD Gothic Neo",size:70);
        self.hexWatchLabel!.textColor = UIColor.whiteColor();
        self.view!.addSubview(self.hexWatchLabel)
        
    }
    
    func onTimer(timer:NSTimer){
        var df : NSDateFormatter = NSDateFormatter()
        df.dateFormat = "HHmmss"
        var str:String = df.stringFromDate(NSDate.date())
        let hexString :String = str+"FF"
        self.backGroundView!.backgroundColor = UIColor.color(hexString)
        self.hexWatchLabel!.text = "#"+str
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    
}



/*

NSDateFormatter *df = [[NSDateFormatter alloc] init];
df.dateFormat  = @"HHmmss";
NSString *str = [df stringFromDate:[NSDate date]];
//    NSLog(@"%@",str);
self.hexColorView.backgroundColor = [UIColor colorWithHexString:[NSString stringWithFormat:@"%@FF",str]];
self.hexWatchLabel.text = [NSString stringWithFormat:@"#%@",str];


}
*/