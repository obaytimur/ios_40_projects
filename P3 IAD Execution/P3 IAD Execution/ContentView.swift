//
//  ContentView.swift
//  P3 iAd Execution
//
//  Created by Oğulcan Baytimur on 14/10/2023.
//

import SwiftUI
import GoogleMobileAds

struct ContentView: View {
    init() {
        // Start Google Mobile Ads
        GADMobileAds.sharedInstance().start(completionHandler: nil)
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
             Spacer()
            
            AdBannerView(adUnitID: "ca-app-pub-8036978542584938/5717245049") // Replace with your ad unit ID
                .frame(height: 50)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// UIViewRepresentable wrapper for AdMob banner view
struct AdBannerView: UIViewRepresentable {
    let adUnitID: String

    func makeUIView(context: Context) -> GADBannerView {
        let bannerView = GADBannerView(adSize: GADAdSizeFromCGSize(CGSize(width: 320, height: 50))) // Set your desired banner ad size
        bannerView.adUnitID = adUnitID
        bannerView.rootViewController = UIApplication.shared.windows.first?.rootViewController
        bannerView.load(GADRequest())
        return bannerView
    }
    
    func updateUIView(_ uiView: GADBannerView, context: Context) {}
}
