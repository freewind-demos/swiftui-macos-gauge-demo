import SwiftUI

struct ContentView: View {
    @State private var progress = 0.68

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Gauge(value: progress, in: 0...1) {
                Text("下载进度")
            } currentValueLabel: {
                Text("\(Int(progress * 100))%")
            } minimumValueLabel: {
                Text("0%")
            } maximumValueLabel: {
                Text("100%")
            }

            Slider(value: $progress, in: 0...1)

            Text("拖滑块，Gauge 会同步变化。")
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}
