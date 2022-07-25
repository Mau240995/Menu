//
//  TablaJugueteController.swift
//  Menu
//
//  Created by user217123 on 7/18/22.
//

import UIKit

class TablaJugueteController: UITableViewController {
    
    var juguetes = [
        Juguetes(imagen: "juguete1", nombre: "Jessi De Toy Story", precio: 800.00, status: "Disponible"),
        Juguetes(imagen: "juguete2", nombre: "Rex De Toy Story", precio: 800.00, status: "Disponible"),
        Juguetes(imagen: "juguete3", nombre: "Carro montable De Kitty", precio: 800.00, status: "No Disponible")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return juguetes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaJuguete", for: indexPath) as! TablaJugueteCell
        
        let juguete = juguetes[indexPath.row]
        cell.imagJuguete.image = UIImage(named:juguete.imagen!)
        cell.nombre.text = juguete.nombre!
        cell.precio.text = "$ \(String(juguete.precio!))"
        cell.status.text = juguete.status!
        
        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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

    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let indexPath = self.tableView.indexPathForSelectedRow
               let juguete  = juguetes[indexPath!.row]
               let dc = segue.destination as! DetalleJugueteController
               dc.juguete  = juguete
    }*/


}
