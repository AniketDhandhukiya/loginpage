//
//  loginEnterPage.swift
//  loginpage
//
//  Created by R & W on 11/01/17.
//

import UIKit

class loginEnterPage: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        img.image = (info[.editedImage] as? UIImage)
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    func openGallery(){
        let gallery = UIImagePickerController()
        gallery.allowsEditing = true
        gallery.sourceType = .savedPhotosAlbum
        gallery.delegate = self
        present(gallery, animated: true, completion: nil)
    }
    
    
    
   
}
