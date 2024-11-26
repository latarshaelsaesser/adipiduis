Text("Hello, World!")
    .gesture(
        TapGesture()
            .onEnded { _ in
                // Handle tap gesture
            }
            .including(.other)
    )
