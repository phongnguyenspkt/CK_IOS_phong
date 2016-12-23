//
//  peopleV2.swift
//  GAV2
//
//  Created by hiep on 12/23/16.
//  Copyright © 2016 phonghk. All rights reserved.
//

import UIKit

class peopleV2: UIViewController {

    @IBOutlet weak var lbdiem: UILabel!
    @IBOutlet weak var lbketqua: UILabel!
    
    @IBOutlet weak var lbcauhoi: UILabel!
    @IBOutlet weak var btnDA1: UIButton!
    
    @IBOutlet weak var btnDA2: UIButton!
    
    @IBOutlet weak var btnDA3: UIButton!
    
    @IBAction func nhapDA1(sender: AnyObject) {
        if(flagD==1)
        {
            lenD()
            ganD()
        }
        else
        {
            if(diem>0)
            {
                xuongD()
            }
        }

    }
    @IBAction func nhapDA2(sender: AnyObject) {
        if(flagD==2)
        {
            lenD()
            ganD()
        }
        else
        {
            if(diem>0)
            {
                xuongD()
            }
        }

    }
    @IBAction func nhapDA3(sender: AnyObject) {
        if(flagD==3)
        {
            lenD()
            ganD()
        }
        else
        {
            if(diem>0)
            {
                xuongD()
            }
        }

    }
    //khởi tạo dữ liệu
    var mcauHoi:[String] = [ "father"," mother"," uncle"," sister"," brother","  I"]
    var mtraLoi:[String] = ["con trai","cha","mẹ","Chú","em gái","em trai","tôi","dì ghẻ"]
    var soDH:Int = 0// so cau da hoi
    var flagD: Int = 0;
    var diem:Int=0;
    var fchay=true;
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        doinen()
        ganD()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func doinen()
    {
        var hinh:UIImage=UIImage(named: "play.jpg")!
        self.view.backgroundColor=UIColor(patternImage: hinh)
    }
    
    
    func lenD()
    {
        if(fchay==true)
        {
            diem=diem+10;
            lbdiem.text=String(diem)
            lbketqua.text="Đúng: +10 điểm"
        }
        
        
    }
    func xuongD()
    {
        if(fchay==true)
        { diem=diem-10;
            lbdiem.text=String(diem)
            lbketqua.text="Sai: -10 điểm"
        }
    }
    func ganD()
    {
        
        if(soDH<6)
        {
            var hoi:String = "";
            var trloi:String = "";
            var v:Int=soDH
            hoi = mcauHoi[v]
            trloi = mtraLoi[v+1]
            lbcauhoi.text = hoi
            soDH = soDH+1
            var R = arc4random_uniform(UInt32(3))
            R += 1
            if(R==1)
            {
                flagD=1
                btnDA1.setTitle(trloi, forState:UIControlState.Normal)
                btnDA2.setTitle(mtraLoi[v], forState:UIControlState.Normal)
                btnDA3.setTitle(mtraLoi[v+2], forState:UIControlState.Normal)
            }
            if(R==2)
            {
                flagD=2
                btnDA2.setTitle(trloi, forState:UIControlState.Normal)
                btnDA1.setTitle(mtraLoi[v], forState:UIControlState.Normal)
                btnDA3.setTitle(mtraLoi[v+2], forState:UIControlState.Normal)
            }
            if(R==3)
            {
                flagD=3
                btnDA3.setTitle(trloi, forState:UIControlState.Normal)
                btnDA1.setTitle(mtraLoi[v], forState:UIControlState.Normal)
                btnDA2.setTitle(mtraLoi[v+2], forState:UIControlState.Normal)
            }
            
        }
        else
        {
            fchay=false;
            var s:String=" Hoàn thàh màn chơi với số điểm:"+String(diem)
            s=s+" Hãy chọn màn chơi khác và tiếp tục"
            lbketqua.text = s
            btnDA1.hidden=true;
            btnDA2.hidden=true;
            btnDA3.hidden=true;
        }
    }

}
