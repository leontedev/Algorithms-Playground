
// C23

public extension String {
    // Split a long String into fixed length strings
    // e.g.: "SwiftRocks".split(byLength: 5) == ["Swift", "Rocks"]
    func split(byLength len: Int) -> [String] {
        guard self.count > len else { return [self] }
        var startIndex = self.startIndex
        var arrays: [Substring] = []
        while startIndex < self.endIndex {
            let endIndex = self.index(startIndex, offsetBy: len, limitedBy: self.endIndex) ?? self.endIndex
            arrays.append(self[startIndex..<endIndex])
            startIndex = endIndex
        }
        
        return arrays.map { String($0) }
    }
}
