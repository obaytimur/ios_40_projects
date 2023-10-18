//
//  ContentView.swift
//  P3 iAd Execution
//
//  Created by Oğulcan Baytimur on 14/10/2023.
//

import SwiftUI
import GoogleMobileAds

struct ContentView: View {
    var body: some View {
      VStack {
        Text("Google Admob")
        
        GADBannerViewController()
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// MARK: - GADBannerViewController

struct GADBannerViewController: UIViewControllerRepresentable {
  
  func makeUIViewController(context: Context) -> some UIViewController {
    let view = GADBannerView(adSize: kGADAdSizeBanner)
    let viewController = UIViewController()
    let testID = "ca-app-pub-3940256099942544/2934735716"
    let realID = "ca-app-pub-9450475706334809/7473547174"
    
    // Banner Ad
    view.adUnitID = realID
    view.rootViewController = viewController
    
    // View Controller
    viewController.view.addSubview(view)
    viewController.view.frame = CGRect(origin: .zero, size: kGADAdSizeBanner.size)
    
    // Load an ad
    view.load(GADRequest())
    
    return viewController
  }
  
  func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
  
}
