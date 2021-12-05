in←⎕CSV '/Users/laged/Codings/apl/aoc2021/day1.csv' 'UTF-8' 2
day1a←{+/,⍵<(1⊖⍵)}
day1b←{day1a ¯2↓⊃+/,{{{(≢in)↑⍵↓in}¨⍵} 0 1 2} in}
day1a in
day1b in
