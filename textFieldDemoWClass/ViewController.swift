//
//  ViewController.swift
//  textFieldDemoWClass
//
//  Created by Brian Mendez on 8/19/14.
//  Copyright (c) 2014 Brian Mendez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
//MARK: Outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    var albumCoverNational = UIImage(named: "theNational.jpg")
    

    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
        
    }
    
    @IBAction func photoButtonPressed(sender: AnyObject) {
        
        var imagePickerController = UIImagePickerController()
        
        imagePickerController.delegate = self
        imagePickerController.allowsEditing = true
        
        imagePickerController.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        self.presentViewController(imagePickerController, animated: true, completion: nil)
        
    }
    
    
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]!) {
        picker.dismissViewControllerAnimated(true, completion: nil)
        
        var editedImage = info[UIImagePickerControllerEditedImage] as UIImage
        self.imageView.image = editedImage
        
    }
 

        
    func imagePickerControllerDidCancel(picker: UIImagePickerController!) {
        picker.dismissViewControllerAnimated(true, completion: nil)
    }

}

