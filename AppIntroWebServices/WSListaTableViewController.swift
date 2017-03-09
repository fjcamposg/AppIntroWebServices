//
//  WSListaTableViewController.swift
//  AppIntroWebServices
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit

class WSListaTableViewController: UITableViewController {

    
    var arrayUsers : [WSPostModelUsers] = []
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        arrayUsers = APIManagerDAta.shared.getUsersApi()
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        return arrayUsers.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customUsercell = tableView.dequeueReusableCell(withIdentifier: "UserCustomCell", for: indexPath) as! WSUserCustomCell

        let userModel = arrayUsers[indexPath.row]
        
        customUsercell.miId.text = "\(userModel.id!)"
        customUsercell.miNombre.text = userModel.name
        customUsercell.miUsername.text = userModel.username
        customUsercell.miEmail.text = userModel.email
        customUsercell.miCalle.text = userModel.address?.street
        customUsercell.miNumero.text = userModel.address?.suite
        customUsercell.miCiudad.text = userModel.address?.city
        customUsercell.miCP.text = userModel.address?.zipcode
        customUsercell.miLatitud.text = userModel.address?.geo?.lat
        customUsercell.miLongitud.text = userModel.address?.geo?.lng
        customUsercell.miTelefono.text = userModel.phone
        customUsercell.miWeb.text = userModel.website
        customUsercell.miNombreEmpresa.text = userModel.company?.name
        customUsercell.miPromo.text = userModel.company?.catchPhrase
        customUsercell.miBs.text = userModel.company?.bs
        
        
        customUsercell.botonMapa.tag = indexPath.row
        customUsercell.botonWeb.tag = indexPath.row
        
        customUsercell.botonMapa.addTarget(self, action: #selector(self.MostrarMapa(_ :)), for: .touchUpInside)
        customUsercell.botonWeb.addTarget(self, action: #selector(self.MostrarWeb(_ :)), for: .touchUpInside)

        return customUsercell
    }



    
    func MostrarMapa(_ sender: UIButton){
        print("mostrarMapa")
        let MapaEnConcreto = self.storyboard?.instantiateViewController(withIdentifier: "MapaViewController") as! MapaViewController
        MapaEnConcreto.latituddata = arrayUsers [sender.tag].address?.geo?.lat
        MapaEnConcreto.longituddata = arrayUsers [sender.tag].address?.geo?.lng
        MapaEnConcreto.codigoPostaldata = arrayUsers [sender.tag].address?.zipcode
        
        present(MapaEnConcreto, animated: true, completion: nil)
        
        
    }
    
    func MostrarWeb(_ sender: UIButton){
        print("mostrarWeb")
        let miWeb = self.storyboard?.instantiateViewController(withIdentifier: "WebParaCeldaViewController") as! WebParaCeldaViewController
        miWeb.miWebahora = arrayUsers [ sender.tag].website
        present(miWeb, animated: true, completion: nil)
        
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
