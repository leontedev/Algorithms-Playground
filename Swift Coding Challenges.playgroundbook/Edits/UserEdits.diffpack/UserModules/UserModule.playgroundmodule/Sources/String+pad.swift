// C22
public extension String {
    func pad(with char: Character, toLength len: Int) -> String {
        guard self.count > 0 else { return "" }
        var padded = self
        while padded.count < len {
            padded.insert(char, at: padded.startIndex)
        }
        return padded
    }
    // Alternative - use String(repeating:count) initializer
    func pad_v2(with char: Character, toLength len: Int) -> String {
        guard self.count < len else { return self }
        let paddingAmount = len - self.count
        let padded = String(repeating: char, count: paddingAmount) + self
        
        return padded
    }
}
