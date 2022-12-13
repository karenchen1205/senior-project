
/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The sample app's main view controller.
*/

import UIKit
import RealityKit
import ARKit
import Combine
import SwiftUI



class ViewController: UIViewController, ARSessionDelegate, UIScrollViewDelegate {
    
  
    @IBOutlet var showlogo: UIImageView!
    @IBOutlet weak var ts1: UIButton!
    @IBOutlet var arView: ARView!
    @IBOutlet weak var screenshot: UIButton!
    @IBOutlet weak var showscreenshot: UIButton!
    @IBOutlet weak var scrollview: UIScrollView!
    @IBOutlet weak var scrollviewP: UIScrollView!
    @IBOutlet weak var scrollviewO: UIScrollView!
    
    //@IBOutlet weak var test: UITextView!
    // The 3D character to display.
    var characterreload :BodyTrackedEntity?
    var cancellable: AnyCancellable? = nil
    var character: BodyTrackedEntity?
    var name = " "
    let characterOffset: SIMD3<Float> = [0, 0, 0] // Offset the character by one meter to the left
    let characterAnchor = AnchorEntity()
    

    @IBOutlet weak var testscrollview: UIScrollView!
    
   // @IBAction func buttonTapped1(_ sender: Any) {
   //     let image = UIApplication.shared.keyWindow!.asImage()
            //将转换后的UIImage保存到相机胶卷中
   //          UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
   // }
    
    @IBAction func screenshot(_ sender: Any) {
        //Create the UIImage
        let screenshot = self.view.takeScreenshot()
        
        image = screenshot
                
        
    }
    
    
        
   // @IBAction func button(_ sender: Any) {
   //     if let character = character, character.parent != self.character
   //     {
    //        if character.parent != nil{
    //            characterAnchor.removeChild(character)
    //            self.character = characterreload
      //      }}
    //    name = "o"
       
    //    viewDidAppear(true)
    //}
    
    @IBAction func T01(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "blue"
        
        viewDidAppear(true)
    }
    @IBAction func T02(_ sender: Any) {
        
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "newmt"
       
        viewDidAppear(true)
        
    }
    
    @IBAction func T03(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "liang1"
        
        viewDidAppear(true)
        
    }
    @IBAction func T04(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "sweater-2"
        
        viewDidAppear(true)
    }
    
    
    @IBAction func T05(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "jacket2"
        
        viewDidAppear(true)
    }
    @IBAction func T06(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "bluewhite"
        
        viewDidAppear(true)
    }
    
    @IBAction func T07(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "kuowearnew"
        
        viewDidAppear(true)
    }
    
    @IBAction func T08(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "vest2"
        
        viewDidAppear(true)
    }
    @IBAction func T09(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "SUIT-2"
        
        viewDidAppear(true)
    }
    
    @IBAction func T10(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "PJ"
        
        viewDidAppear(true)
    }
    
    
    
    @IBAction func P01(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "02"
        
        viewDidAppear(true)
    }
    @IBAction func P02(_ sender: Any) {
        
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "gjd22"
       
        viewDidAppear(true)
        
    }
    
    @IBAction func P03(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "skirrt"
        
        viewDidAppear(true)
        
    }
    @IBAction func P04(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "newbigskirt"
        
        viewDidAppear(true)
    }
    
    
    @IBAction func P05(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "RROAO"
        
        viewDidAppear(true)
    }
    @IBAction func P06(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "p2"
        
        viewDidAppear(true)
    }
    
    @IBAction func P07(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "ruff1"
        
        viewDidAppear(true)
    }
    
    @IBAction func P08(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "llmao"
        
        viewDidAppear(true)
    }
    @IBAction func P09(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "liang5"
        
        viewDidAppear(true)
    }
    
    @IBAction func P10(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "gjd2"
        
        viewDidAppear(true)
    }
    @IBAction func S01(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "dress-4"
        
        viewDidAppear(true)
    }
    @IBAction func S02(_ sender: Any) {
        
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "halter"
       
        viewDidAppear(true)
        
    }
    
    @IBAction func S03(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "malesuit-2"
        
        viewDidAppear(true)
        
    }
    @IBAction func S04(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "skirt-3"
        
        viewDidAppear(true)
    }
    
    
    @IBAction func S05(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "shirt-2"
        
        viewDidAppear(true)
    }
    @IBAction func S06(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "high2"
        
        viewDidAppear(true)
    }
    
    @IBAction func S07(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "suit"
        
        viewDidAppear(true)
    }
    
    @IBAction func S08(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "suit3"
        
        viewDidAppear(true)
    }
    @IBAction func S09(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "AOAO"
        
        viewDidAppear(true)
    }
    
    @IBAction func S10(_ sender: Any) {
        if let character = character, character.parent != self.character
        {
            if character.parent != nil{
                characterAnchor.removeChild(character)
                self.character = characterreload
            }}
        name = "h12"
        
        viewDidAppear(true)
    }
    
   
    
        @IBAction func movetest(_ sender: Any) {
       // scrollview.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
        scrollviewP.isHidden = !scrollviewP.isHidden
        scrollview.isHidden = true
        scrollviewO.isHidden = true
       
    }
    
    @IBAction func movetest2(_ sender: Any) {
        //scrollview.setContentOffset(CGPoint(x: 480, y: 0), animated: true)
        scrollview.isHidden = !scrollview.isHidden
        scrollviewP.isHidden = true
        scrollviewO.isHidden = true
    }
    
    @IBAction func suitshow(_ sender: Any) {
        scrollviewO.isHidden = !scrollviewO.isHidden
        scrollviewP.isHidden = true
        scrollview.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        arView.session.delegate = self
       // view.addSubview(testscrollview)
        // If the iOS device doesn't support body tracking, raise a developer error for
        // this unhandled case.
        guard ARBodyTrackingConfiguration.isSupported else {
            fatalError("This feature is only supported on devices with an A12 chip")
        }
        
        // Run a body tracking configration.
        let configuration = ARBodyTrackingConfiguration()
        arView.session.run(configuration)
        
        arView.scene.addAnchor(characterAnchor)
        
        // Asynchronously load the 3D character.
        
        cancellable = Entity.loadBodyTrackedAsync(named: "character/"+name).sink(
            receiveCompletion: { completion in
                if case let .failure(error) = completion {
                    print("Error: Unable to load model: \(error.localizedDescription)")
                }else{
                    
                }
                //cancellable?.cancel()
                
            }, receiveValue: { (character: Entity) in
                if let character = character as? BodyTrackedEntity {
                    // Scale the character to human size
                    //if self.character == character{
                    //  self.character = self.characterreload
                    //}else{
                    character.scale = [1.0,1.0,1.0]
                    self.character = character
                    //}
                    // self.cancellable?.cancel()
                } else {
                    print("Error: Unable to load model as BodyTrackedEntity")
                }
            })


       
        
        scrollview.delegate = self
        scrollview.isHidden = true
        //scrollview.contentSize = CGSizeMake(414 * 30, 0)
        view.addSubview(scrollview)
        scrollviewP.isHidden = true
        scrollviewO.isHidden = true
        
        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(hidelogo), userInfo: nil, repeats: false)
        
        //ts1.setImage(UIImage(named: "imageee.jpeg"), for:.highlighted)
        //ts1.imageView?.contentMode = .scaleAspectFit
    }
   
   @objc func hidelogo(){
       showlogo.isHidden = true
   }
    
    func session(_ session: ARSession, didUpdate anchors: [ARAnchor]) {
        for anchor in anchors {
            guard let bodyAnchor = anchor as? ARBodyAnchor
            else { continue }
            
            // Update the position of the character anchor's position.
            let bodyPosition = simd_make_float3(bodyAnchor.transform.columns.3)
            characterAnchor.position = bodyPosition + characterOffset
            // Also copy over the rotation of the body anchor, because the skeleton's pose
            // in the world is relative to the body anchor's rotation.
            characterAnchor.orientation = Transform(matrix: bodyAnchor.transform).rotation
            
            if let character = character, character.parent != self.character
            {
                // Attach the character to its anchor as soon as
                // 1. the body anchor was detected and
                // 2. the character was loaded.
                if character.parent != nil{
                    continue
                    
                }else {
                    characterAnchor.addChild(character)
                    
                }
                
            }
        }
        
    }}

extension UIView {
    
    func takeScreenshot() -> UIImage {
        
        //begin
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, UIScreen.main.scale)
        
        // draw view in that context.
        drawHierarchy(in: self.bounds, afterScreenUpdates: true)
        
        // get iamge
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        if image != nil {
            return image!
        }
        
        return UIImage()
        
    }
    
}

