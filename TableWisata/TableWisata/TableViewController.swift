//
//  TableViewController.swift
//  TableWisata
//
//  Created by SMK IDN MI on 10/17/17.
//  Copyright © 2017 Be Dev. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var namaBuah = ["Apple", "Apricot", "Banana", "Blueberry", "Cantaloupe"]

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
        return namaBuah.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cellwisata", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = namaBuah[indexPath.row]
        
        //menampilkan gambar
        let imagename = UIImage(named: namaBuah[indexPath.row])
        cell.imageView?.image = imagename
        
        
        return cell
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
