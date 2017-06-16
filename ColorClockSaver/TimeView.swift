import Cocoa

class TimeView: NSTextField {
  override init(frame frameRect: NSRect) {
    super.init(frame: frameRect)
    setup()
  }

  required init?(coder: NSCoder) {
    super.init(coder: coder)
    setup()
  }

  func setup() {
    drawsBackground = false
    isBezeled = false
    isBordered = false
    isEditable = false
    font = NSFont(name: "mononoki", size: 100)
  }

  func update() {
    let date = Date()
    let formatter = DateFormatter()
    formatter.dateFormat = "HH:mm:ss"
    let dateString = formatter.string(from: date)

    stringValue = dateString
  }
}
