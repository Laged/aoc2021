in←(⎕CSV⍠'Separator' ' ') '/Users/laged/Codings/apl/aoc2021/day2.csv' 'UTF-8' 4
m←{+/⍵}¨{⍵/2⌷⍉in}¨{(⊂⍵)⍷1⌷⍉in}¨∪1⌷⍉in
day2a←(1⌷m)×(2⌷m-3⌷m)
day2a

p←⊃⎕NGET'/Users/laged/Codings/apl/aoc2021/day2.csv'1
in←{' '(≠⊆⊢)⍵}¨p
s←{(h d a)←⍺ ⋄ c←(⊃⍵) ⋄ x←(⍎⊃2⌷⍵) ⋄ ((h+((7=≢c)×x)) (d+((7=≢c)×x×a)) (a+(¯1×(2=≢c)×x)+((4=≢c)×x)))}
)copy dfns foldl
end←(0 0 0) s foldl in
day2b←1⌷end × 2⌷end
day2b
