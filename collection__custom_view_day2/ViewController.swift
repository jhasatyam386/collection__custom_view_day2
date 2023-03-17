//
//  ViewController.swift
//  collection__custom_view_day2
//
//  Created by R&W on 01/01/18.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    var flag = ["🦚","🍎","🚗","🚑","🚚","🚜","🚔","🚌","🏎","🛺"]
    var name = ["peacock","apple","car","ambulance","truck","jcb","police car","bus","bike","auto"]
    
    var selectCell = -1
   
  
    @IBOutlet weak var collectionView1: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return flag.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView1.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.label1.text = flag[indexPath.row]
        cell.label2.text = name[indexPath.row]
        cell.radioButton.image = UIImage(systemName: "circle.fill")
        
        cell.layer.borderWidth = 5
        cell.layer.cornerRadius = 10
        if selectCell == indexPath.row
        {
            cell.radioButton.image = UIImage(systemName: "circle.fill")
        }
        else
        {
            cell.radioButton.image = UIImage(systemName: "circle")
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        selectCell = indexPath.row
        collectionView1.reloadData()
//        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
//        navigationController?.pushViewController(a, animated: true)
    }
    

}

