//
//  TableViewController.swift
//  TableWisata
//
//  Created by SMK IDN MI on 10/17/17.
//  Copyright © 2017 Be Dev. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    //deklarasi namaSelected dan gambar selected u/ mengngiriman data
    
    var namaSelected:String?
    var gambarSelected:String?
    
    
    // deklarasi nama buah
    var namaWisata = ["Apple", "Apricot", "Banana", "Blueberry", "Cantaloupe"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return namaWisata.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cellwisata", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = namaWisata[indexPath.row]
        
        //menampilkan gambar
        let imagename = UIImage(named: namaWisata[indexPath.row])
        cell.imageView?.image = imagename
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //mengecek data yg dikirim
        print("row \(indexPath.row)selected")
        //memasukkan data ke variable nama selected dan image selected ke masig2 variablenya
        namaSelected = self.namaWisata[indexPath.row]
        gambarSelected = self.namaWisata[indexPath.row]
        //mamangil segue passDataDetail
        performSegue(withIdentifier: "passDataDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //mengecek apakah segue nya ada atau tidak
        if segue.identifier == "passDataDetail" {
            //kondisi ketika seguenya ada
            //mengirimkan data ke dataViewController
            let kirimData = segue.destination as! DetailViewController
            //mengirim data k masing2 variable
            // mengirim data ke nama buah\
            kirimData.passNamaWisata = namaSelected
            //mengirimkan data gambar wisata
            kirimData.passGambarBuah = gambarSelected
            
            
        }
    }
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let more = UITableViewRowAction(style: .normal, title: "more") { action,index in
            //self.isEditing = false
            print("more button tapped")
        }
        more.backgroundColor = UIColor.lightGray
        
        
        let favorite = UITableViewRowAction(style: .normal, title: "Detail") { action,index in
            //self.isEditing = false
            print("Detail button tapped")
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "detailView") as! DetailViewController
            
            self.present(vc, animated: true, completion: nil)
        }
        // memberikan warna pd menu favorite
        favorite.backgroundColor = UIColor.orange
        
        
        let share = UITableViewRowAction(style: .normal, title: "Show Map") { action,index in
            //self.isEditing = false
            print("Show Map button tapped")
            //pindah ke layoutmapkit
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "detailMap") as! MapKitViewController
            
            self.present(vc, animated: true, completion: nil)
        }
        share.backgroundColor = UIColor.blue
        
        return [share, favorite, more]
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    //untuampilkan menu swipe
    
    // Override to support editing the table view.
    //    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
    //        if editingStyle == .delete {
    //
    //            // hapus item darri array
    //            namaBuah.Remove(at: indextPath.row)
    //            //hapus data dari t5able view
    //            tableView.deleteRows(at: [indexPath], with: ,fade)
    //        } else if editingStyle == .insert {
    //            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    //        }
    //    }
    
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
