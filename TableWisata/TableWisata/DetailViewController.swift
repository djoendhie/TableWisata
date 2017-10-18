//
//  DetailViewController.swift
//  TableWisata
//
//  Created by SMK IDN MI on 10/17/17.
//  Copyright © 2017 Be Dev. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var labelNamaWisata: UILabel!
    @IBOutlet weak var imgGambar: UIImageView!
    
    //deklaraSI VARIABLE u/ menampung data yg dikirim
    var passNamaWisata:String?
    var passGambarBuah:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        //menampilkan data yg  sudah d kirim
        labelNamaWisata.text = passNamaWisata
        //menampilkan hambar
        imgGambar.image = UIImage(named: passGambarBuah!)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
