import SwiftUI
import AVKit
import AVFoundation

struct VideoPlayerView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let playerViewController = AVPlayerViewController()
        if let path = Bundle.main.path(forResource: "SampleVideo_1280x720_1mb", ofType: "mp4") {
            let player = AVPlayer(url: URL(fileURLWithPath: path))
            playerViewController.player = player
        } else {
            debugPrint("SampleVideo_1280x720_1mb.mp4 not found")
        }
        return playerViewController
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {


        // No need to update the view controller
        // hi 


        // hi hi

    }
}

struct ContentView: View {
    var body: some View {
        VideoPlayerView()
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}


