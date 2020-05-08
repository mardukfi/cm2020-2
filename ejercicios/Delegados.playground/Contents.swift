import UIKit
protocol HeartRateReceiverDelegate {
    func heartRateUpdated(to bpm: Int)
}
class HeartRateReceiver {
    var currentHR: Int? {
        didSet {
            if let currentHR = currentHR {
                print("The most recent heart rate reading is \(currentHR)")
                delegate?.heartRateUpdated(to: currentHR)
            }
            else{
                print("Looks like we can't pick up heart rate")
            }
        }
    }
    var delegate: HeartRateReceiverDelegate?
    func startHeartRateMonitorExample(){
        // Conectar con el monitor
        for _ in 1...10 {
            let randomHR = 60 + Int(arc4random_uniform(UInt32(15)))
            currentHR = randomHR
            print(currentHR!)
            Thread.sleep(forTimeInterval: 2)
        }
    }
}
class HeartRateViewController: UIViewController, HeartRateReceiverDelegate{
    
   var heartRateLabel: UILabel = UILabel()
   func heartRateUpdated(to bpm: Int){
        heartRateLabel.text = "\(bpm)"
        print("The user has been shown a heart rate of \(bpm)")
    }
    
}
let receiver = HeartRateReceiver()
let vc = HeartRateViewController()
receiver.delegate =  vc
receiver.startHeartRateMonitorExample()

