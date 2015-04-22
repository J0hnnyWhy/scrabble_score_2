require('rspec')
require('scrabble_score')

# return a scrabble score for a letter
# returns a scrabble score for a word



describe('String#scrabble_score') do
  it("returns a scrabble score for a letter") do
    expect("a".scrabble_score()).to(eq(1))
  end

  it ("returns a scrabble score for a word") do
    expect("grow".scrabble_score()).to(eq(8))
  end
end
