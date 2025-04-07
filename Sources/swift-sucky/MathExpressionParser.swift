public struct MathExpressionParser {
    private let input: String
    private var pos: String.Index

    init(_ input: String) {
        self.input = input.filter { !$0.isWhitespace }
        self.pos = self.input.startIndex
    }

    private func isEof() -> Bool {
        pos >= input.endIndex
    }

    private func getAtCursor() -> Character? {
        isEof() ? nil : input[pos]
    }

    private mutating func advance() {
        guard !isEof() else { return }
        self.pos = input.index(after: pos)
    }

}
