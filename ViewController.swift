//
//  ViewController.swift
//  RecipeAPP_4
//
//  Created by Tanish_MAC on 01/03/23.
//

import UIKit
  

class ViewController: UIViewController,UITableViewDelegate , UITableViewDataSource  {
    
    //
 //  let

  //  struct jsonstruct:Decodable{
  //      let strIngredient : String
  //      let strDescription : String
  // }
    
  //  var arrdata = [jsonstruct]()
  //     override func viewDidLoad() {
  //         super.viewDidLoad()
  //         getData()
  //     }
         //List of recipies
    var Recipies = ["Chicken","Pork","Avacado","Rice Krispies","Muffins","Tofu","Beef Brisket","Bay Leaves","Bread","Brocolli"]

    // ids
    var Details = ["a","b","c","d","e","f","g","h","i","j"]
     
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return Details.count
    }
    func tableView(_ tableView: UITableView,cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = Recipies[indexPath.row]
        cell?.detailTextLabel?.text = Details[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //   self.view.backgroundColor = UIColor.blue
    //   let detail:DetailViewController = self.storyboard?.instantiateViewController(identifier:    "DetailViewController") as! DetailViewController
    //   self.navigationController?.pushViewController(detail, animated: true)
        
     //-------------------------------------------
        
        
    //   func getData(){
    //       let url = URL(string: "https://www.themealdb.com/api/json/v1/1/list.php?i=list")
    //      URLSession.shared.dataTask(with: url!) {
    //          (data,response, error) in
    //         do{
    //            if error == nil{
                        
    //               self.arrdata =  try JSONDecoder().decode([jsonstruct].self, from: data!)
                        
    //               for mainarr in self.arrdata{
    //                 print(mainarr.strIngredient,":",mainarr.strDescription)
    //             }
    //       }
    //     }
    //      catch{
    //       print("Error in get json data")
                    
    //      }
                
    //     }.resume()
    //      }

        
        let storyBoard = UIStoryboard(name: "Main" , bundle: nil)
       guard let detail = storyBoard.instantiateViewController(identifier: "DetailViewController") as? DetailViewController else {
            print("Failed to load")
            return
        }
        self.present(detail, animated: true, completion: nil)
        detail.strlabel1 = Recipies[indexPath.row]
        detail.strlabel2 = Details[indexPath.row]
        
    }
}

