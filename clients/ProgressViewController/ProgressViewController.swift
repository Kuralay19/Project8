import UIKit
import SnapKit

class ProgressViewController: UICollectionViewController {

    let progressLabel = UILabel()
    let progressBar = UIProgressView()
    let readPercentage: Float = 0.75 // Example: 75% read
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        layoutUI()
    }
    
    func setupUI() {
        // Configure progress label
        progressLabel.text = String(format: "Reading Progress: %.0f%%", readPercentage * 100)
        progressLabel.textAlignment = .center
        
        // Configure progress bar
        progressBar.setProgress(readPercentage, animated: true)
        progressBar.tintColor = .blue
    }
    
    func layoutUI() {
        view.addSubview(progressLabel)
        view.addSubview(progressBar)
        
        progressLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide).offset(100)
        }
        
        progressBar.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.top.equalTo(progressLabel.snp.bottom).offset(20)
        }
    }
}
