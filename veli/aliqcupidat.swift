import Foundation

struct CountdownTimer {
    var interval: Range<Date>
    var showsHours: Bool
    var maxFieldCount: Int
    var maxPrecision: Duration
    
    // Public initializer
    public init(
        countingDownIn interval: Range<Date>, 
        showsHours: Bool = true, 
        maxFieldCount: Int = 3, 
        maxPrecision: Duration = .seconds(1)
    ) {
        self.interval = interval
        self.showsHours = showsHours
        self.maxFieldCount = maxFieldCount
        self.maxPrecision = maxPrecision
    }
    
    // Function to start the countdown (example placeholder function)
    func start() {
        // Logic to start the countdown
        print("Countdown started from \(interval.lowerBound) to \(interval.upperBound)")
    }
}

// Example usage
let now = Date()
let futureDate = Calendar.current.date(byAdding: .day, value: 1, to: now)!
let dateRange = now..<futureDate

let countdown = CountdownTimer(countingDownIn: dateRange)
countdown.start()  // Output: Countdown started from <current date and time> to <current date and time + 1 day>
