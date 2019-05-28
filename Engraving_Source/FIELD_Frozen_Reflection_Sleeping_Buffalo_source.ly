\version "2.19.12"
%  ----------------------------------------------------------
% Title: Frozen reflection, sleeping buffalo
% Composer: Ambrose Field
% For: solo piano and electromechanical resonators
% Duration: 20 mins
% Date: 2017
%
% Copyright Material
% Licensed under Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
%
%  ----------------------------------------------------------
% Score version:
% Release candidate 2 - 007
%
% Lilypond Score Layout File
% Use version 2.19 or above only
%  ----------------------------------------------------------

% Paper size and setup
af_globalpad = 1.0
\include "openlilylib"
\useLibrary Stylesheets
\useNotationFont Ross

ebow_one = \markup { \pad-markup #af_globalpad {\box \pad-around #0.2 { {
  \score {
    \new Staff \with { 
      
      \remove "Time_signature_engraver" 
      \override StaffSymbol.staff-space = #(magstep -3)
      \override StaffSymbol.thickness = #(magstep -3)
      fontSize = #-3
    }
    {
      \clef bass
      <cis fis >1
      ^\markup {\sans "EBows"}
    }
    
    \layout { ragged-right = ##t  indent = -2.5\cm } 
  }
}}}}

ebow_two = \markup { \pad-markup #af_globalpad {\box {
  \score {
    \new Staff \with { 
      
      \remove "Time_signature_engraver" 
      \override StaffSymbol.staff-space = #(magstep -3)
      \override StaffSymbol.thickness = #(magstep -3)
      fontSize = #-3
    }
    {
      \clef bass
      <fis >1
      ^\markup {\sans "EBow"}
    }
    
    \layout { ragged-right = ##t  indent = 0\cm } 
                                                }}
}}

ebow_three = \markup { \pad-markup #af_globalpad { \box {
  \score {
    \new Staff \with { 
      
      \remove "Time_signature_engraver" 
      \override StaffSymbol.staff-space = #(magstep -3)
      \override StaffSymbol.thickness = #(magstep -3)
      fontSize = #-3
    }
    {
      \clef bass
      <cis >1
      ^\markup {\sans "EBow"}
    }
    
    \layout { ragged-right = ##t  indent = 0\cm } 
  }
}}}

%-----------------------------------------------------------------------end ebow fragments----------------------------------

   %                   "Nimbus Sans,Nimbus Sans L"
   % fonts go Serif, Sans, Mono

\paper {
  #(set-paper-size "a3landscape")
  max-systems-per-page = 5


  #(define fonts
    (make-pango-font-tree "Baskerville"
                            "Roboto"
                          "Luxi Mono"
                          (/ staff-height pt 18)))
% can show all available fonts by
}

\header {
  encodingdate = "2017-05-16"
  composer =\markup { \sans \bold "AMBROSE FIELD"}
% title = \markup { \bold \sans "FROZEN REFLECTION, SLEEPING BUFFALO"}
 piece = \markup { \pad-markup #2 {\fontsize #4 \bold \sans "FROZEN REFLECTION, SLEEPING BUFFALO" }}
  % subtitle= \markup {\sans "Piano solo with prepared resonances"}
  subsubtitle=\markup{\sans \italic  "for Megumi Masaki"}
  tagline = "Ambrose Field 2017 - revision rc2:7"  
} 

\layout {
  \context {
    \Score
    skipBars = ##t
  }
}

%
%
% RIGHT  HAND ------------
%
%

PartPOneVoiceOne =    
\relative ais' {

    
  
  \clef "treble" \key c \major \numericTimeSignature\time 4/4  | % 1
  \tempo 4=55 s1
  
  ^\markup {\ebow_one } 
   
   
   ^\markup { \pad-markup #af_globalpad {
     \hbracket {
   \column {
       \line { \bold Gradually }
      \line { introduce EBow }
      \line { resonances before}
      \line { playing first chord.}
     
              }}}
   
}  | % 2

  %R1*5 | % 7
  R1 | R1 \fermataMarkup | R1 | R1 | R1 \fermataMarkup |
  \time 3/16  <ais e'>8. -- | % 8
  \numericTimeSignature\time 4/4  <ais g'>8 -. r8 r4 r2 | % 9
  R1 | \barNumberCheck #10
  \time 3/16  \arpeggioArrowUp \arpeggioArrowUp <e' g'>8. \arpeggio -.
  \arpeggio \arpeggioNormal \arpeggioNormal | % 11
  \numericTimeSignature\time 4/4  R1*2 | % 13
  \time 5/8  | % 13
  g'8 \mf -. <g, b d>2 ( | % 14
  \time 6/4  g2. b,2. ) | % 15
  \time 5/4  | % 15
  \tempo 4=75 <fis cis'>8 \mp ( <cis' g'>8 ) <gis e'>8 -. g'8 -. r2 <e
  d'>8 \mf ( <gis fis'>8 ) | % 16
  <fis, b>8 <ais e'>16 fis''2. ~ fis16 <gis, b c>8 ( <b, e g>8 ) | % 17
  <e' fis>1 ~ ~ <e fis>4 | % 18
  \numericTimeSignature\time 4/4  R1 | % 19
  \time 2/16  | % 19
  \tempo 4=55 R8 | \barNumberCheck #20
  \time 10/4  <ais, c>\breve \mp ~ -- ~ <ais c>2 | % 21
  \time 3/16  R8. | % 22
  \numericTimeSignature\time 4/4  | % 22
  <b fis'>8 \ppp -. r8 r4 r2 | % 23
  \time 2/16  | % 23
  R8 | % 24
  \time 10/4  \arpeggioArrowUp \arpeggioArrowUp \arpeggioArrowUp <fis,
  e' c'>\breve \mp ~ \arpeggio ~ \arpeggio ~ \arpeggio
  \arpeggioNormal \arpeggioNormal \arpeggioNormal <fis e' c'>2 | % 25
  \time 3/16  R8. | % 26
  \numericTimeSignature\time 4/4  | % 26
  <g' e'>8 \mf -. r8 r4 r2 | % 27
  \time 2/16  | % 27
  R8 | % 28
  \time 10/4  <e d' fis>\breve \pp ~ \arpeggio ~ \arpeggio ~ \arpeggio
  <e d' fis>2 | % 29
  \numericTimeSignature\time 4/4  R1 \fermataMarkup | \barNumberCheck #30
  \time 5/4  | \barNumberCheck #30
  \tempo 4=75 R4*5 | % 31
  cis8 -> <b c'>8 ~ -> ~ <b c'>4 ~ ~ <b c'>2. ~ ~ | % 32
  <b c'>8 r8 r1 | % 33
  R4*5 | % 34
  r2 \mp r4 g''8 ( <fis g>4. ) ~ ~ | % 35
  <fis g>2. ~ ~ <fis g>8 r8 r4 | % 36
  \time 5/8  r2 <b, e fis>8 \p ( | % 37
  \numericTimeSignature\time 4/4  d8 ) r8 <c d>8 -. r8 r2 | % 38
  \time 7/16  r4 r16 <g b g'>8 \mp ~ ~ ~ | % 39
  \time 6/4  <g b g'>2. ~ ~ ~ <g b g'>4. r8 r4 | \barNumberCheck #40
  \time 5/4  | \barNumberCheck #40
  r4 \mf r8 g8 ~ -- g4. r8 r4 | % 41
  R4*5 \fermataMarkup | % 42
  r8 r16 <d' e g>16 \mp ( ~ ~ ~ <d e g>16 <b g'>16 <e fis>8 e8 <e fis
  g>8 ~ ~ ~ <e fis g>2 ) ~ ~ ~ | % 43
  <e fis g>2 ~ ~ ~ <e fis g>8 r2 r16 <g, b>16 ~ -- ~ | % 44
  <g b>8 r8 r4 e16 \ppp -. fis'16 -. r8 r2 | % 45
  r16 <fis b>16 ( b,8 ) r1 | % 46
  \time 5/8  r4 <fis' g b>8 \pp -. r4 | % 47
  \numericTimeSignature\time 4/4  R1 | % 48
  \time 7/16  R4.. | % 49
  \time 6/4  r8. \arpeggioArrowUp \arpeggioArrowUp <c g'>16 ~
  \arpeggio ~ \arpeggio \arpeggioNormal \arpeggioNormal <c g'>2 ~ ~ <c
  g'>2 ~ ~ <c g'>8. r16 | \barNumberCheck #50
  \time 5/4  | \barNumberCheck #50
  \tempo 4=60 r2 r4 r8 r16 <b c fis>16 ~ ~ ~ <b c fis>8 <e fis g>8 ~ | % 51
  \time 3/16  fis16 r8 | % 52
  \numericTimeSignature\time 4/4  r2 r8 r16 fis16 \p ~ -- fis8. r16 | % 53
  \time 3/16  b,8 -> <e, d'>16 ~ ~ | % 54
  \numericTimeSignature\time 4/4  <e d'>2 ~ ~ <e d'>8. <e g>16 ~ -. ~
  <e g>16 r16 r8 | % 55
  \time 5/4  r2 r4 r8 r16 <g c>16 \mf ~ ~ <g c>16 <e fis c'>8. ~ -> ~
  ~ | % 56
  \time 5/8  <e fis c'>4 ~ ~ ~ <e fis c'>16 c'16 ~ c4 ~ | % 57
  \time 6/4  c4 r4 r1 | % 58
  \time 5/4  R4*5 | % 59
  r4 r8 r16 <g d'>16 \p ~ ~ <g d'>2. ~ ~ | \barNumberCheck #60
  <g d'>4 ~ ~ <g d'>8. r16 r4 r2 | % 61
  \time 6/4  R1. | % 62
  \time 5/4  R4*5 \fermataMarkup | % 63
  \time 3/16  R8. | % 64
  \numericTimeSignature\time 4/4  | % 64
  \tempo 4=75 r4 fis'8. \mf -> r16 r4 fis4 \mp ~ | % 65
  \time 3/16  fis8. ~ | % 66
  \numericTimeSignature\time 4/4  fis4 r4 r2 | % 67
  \time 5/4  r2 ais,,,8 \mp -. e'8 ~ e4. <a b e>8 ~ -- ~ ~ | % 68
  \time 5/8  <a b e>2 ~ ~ ~ <a b e>8 | % 69
  \time 6/4  <ais, ais'>2. -> b'8 \fp ( <gis b e>8 ) <e e'>8 ( <cis
  b'>8 ) r4 | \barNumberCheck #70
  \time 5/4  | \barNumberCheck #70
  g'''4 \mf fis8 ( <ais,, e'>8 <gis ais>8 ) <b e>16 -. <b' fis'>16 ~
  -- ~ <b fis'>2 ~ ~ | % 71
  <b fis'>4 r4 ais,,2. \p ~ | % 72
  ais2 r4 \arpeggioArrowUp \arpeggioArrowUp \arpeggioArrowUp <fis' g'
  fis'>2 \pp  ~ \arpeggio ~ \arpeggio ~ \arpeggio
  \arpeggioNormal \arpeggioNormal \arpeggioNormal | % 73
  \time 6/4  <fis g' fis'>2. r2. | % 74
  \time 3/16  R8. | % 75
  \time 5/4  | % 75
  \tempo 4=70 r1 r16 a,8. \mf -> | % 76
  \time 3/16  R8. | % 77
  \numericTimeSignature\time 4/4  R1 | % 78
  \time 3/16  R8. | % 79
  \numericTimeSignature\time 4/4  r2 r4 r8 \arpeggioArrowUp
  \arpeggioArrowUp <ais b'>8 \ppp ~ \arpeggio ~ \arpeggio
  \arpeggioNormal \arpeggioNormal | \barNumberCheck #80
  \time 5/4  <ais b'>2 r2 r4 | % 81
  \time 5/8  R8*5 | % 82
  \time 6/4  r16. <a fis' b>32 \f -> <a fis' b>8 -> <a fis' b>4 ~ ~ ~
  <a fis' b>8 <e' b'>8 ~ ~ <e b'>2 b'8 -> b8 ~ | % 83
  \time 5/4  b2 ~ b8 <e g b>8 ( ais,8 gis8 ) <e b'>8 -. -> r8 | % 84
  r8 <fis b>4 \f <b g'>8 -- <e g>8 ( <ais c>8 ) <cis,, fis cis'>16 ->
  <gis' e'>8. ~ ~ <gis e'>4 | % 85
  \tempo 4=78 \tempo 4=80 \tempo 4=80 | % 85
  r4 r8 <a, cis>8 \p <fis' b>8 <fis gis>8 ~ ~ <fis gis>2 ~ ~ | % 86
  \time 6/4  <fis gis>2 ~ ~ <fis gis>8 r4 <b e>8 \mf ~ -> ~ <b e>2 ~ ~
  | % 87
  \time 3/16  <b e>8. ~ ~ | % 88
  \time 5/4  <b e>4 ~ ~ <b e>8. r16 r4 r2 | % 89
  R4*5 | \barNumberCheck #90
  r16 cis,8 \f ( <fis b>16 -> b'8 <cis, e>8 ) ~ ~ <cis e>16 <a, fis'>8.
  ~ ~ <a fis'>2 | % 91
  \time 5/8  R8*10 | % 93
  \time 5/4  R4*5 | % 94
  r16 <b' b'>8. \mp ~ -- ~ <b b'>4 ~ ~ <b b'>4 ~ ~ <b b'>16 <cis e>8
  -> r16 r4 | % 95
  \tempo 4=58 | % 95
  R4*5 | % 96
  r2 r4 r8 r16 e16 \mf ~ -> e16 <b' e fis g>16 ( <e, g d'>8 | % 97
  \time 5/8  <e g d'>8. ) <e' g>16 ~ -- ~ <e g>4. | % 98
  R8*5 | % 99
  \time 5/4  R4*5 \fermataMarkup | \barNumberCheck #100
  \time 5/8  r8 r16 b16 \p ~ b16 <b fis'>16 -> r4 | % 101
  \time 5/4  <b fis'>8. <e, g b>16 ~ -> ~ ~ <e g b>4 ~ ~ ~ <e g b>4 ~
  ~ ~ <e g b>8. d'16 ~ -- d4 | % 102
  R4*5 | % 103
  r1 r16 <d g>8 \p -. fis16 -. | % 104
  \time 5/8  e,8 -- g'8 -. <d fis>16 -> <c e fis>8 -> r16 r8 | % 105
  r4 r16 \arpeggioArrowUp \arpeggioArrowUp <e, g'>16 \mf ~ \arpeggio ~
  \arpeggio \arpeggioNormal \arpeggioNormal <e g'>4 ~ ~ | % 106
  \time 5/4  <e g'>2. ~ ~ <e g'>8. r16 r4 | % 107
  \tempo 4=64 | % 107
  R4*5 | % 108
  r2 r4 r8 r16 <c' e fis>16 \mf ~ ~ ~ <c e fis>16 <c e fis>16 <g d'
  fis>8 | % 109
  \time 5/8  <e b'>8 -- c'16 -. <d fis g>16 ~ ~ ~ <d fis g>16 r16 r4 |
  \barNumberCheck #110
  r8 r16 \arpeggioArrowUp \arpeggioArrowUp <e, g'>16 \mp ~ \arpeggio ~
  \arpeggio \arpeggioNormal \arpeggioNormal <e g'>4. ~ ~ | % 111
  \time 5/4  <e g'>2. ~ ~ <e g'>16 r16 r8 r4 | % 112
  \time 5/8  R8*5 | % 113
  \time 5/4  r2 r16 fis'8. \mp ~ fis2 ~ | % 114
  fis16 <c g'>8 -. r16 r1 | % 115
  R4*5 | % 116
  \time 5/8  r8 r16 g'16 \mp ~ g16 g16 <fis g>8 <c g'>8 -. | % 117
  <fis g>16 ( b,8 ) r16 r8 r4 | % 118
  \time 5/4  r2 <e, g>2. \mp ~ ~ | % 119
  \time 5/8  <e g>16 r16 r2 | \barNumberCheck #120
  \time 5/4  | \barNumberCheck #120
  \tempo 4=75 R4*5 | % 121
  r1 r16 <c' e>8 \ppp ( <e fis g>16 ~ ~ ~ | % 122
  \time 5/8  <e fis g>16 <g, d'>8 ) r16 r4 r16 <g c>16 \pp ( ~ ~ | % 123
  <g c>16 d'16 g8 b8 ) fis16 ( d8 ) r16 | % 124
  \time 5/4  r4 r8 r16 <e, fis'>16 \f ~ -> ~ <e fis'>2. ~ ~ | % 125
  \time 5/8  <e fis'>4. ~ ~ <e fis'>16 r16 r8 | % 126
  \time 5/4  r2 r16 \arpeggioArrowUp \arpeggioArrowUp <e d'>8. \f ~
  \arpeggio ~ \arpeggio \arpeggioNormal \arpeggioNormal <e d'>2 ~ ~ | % 127
  <e d'>16 r2 fis'8 \mf ( <e, g b>16 \> ~ ~ ~ <e g b>16 <c' e fis>8 \!
  \p ) r16 r4 | % 128
  \time 5/8  R8*10 | \barNumberCheck #130
  \time 5/4  r2 r4 r8 r16 b16 \ppp ~ b4 ~ | % 131
  \time 5/8  b2 ~ b8 ~ | % 132
  \time 5/4  b4 ~ b16 r8 r4 <g d' fis>16 \mp ( ~ ~ ~ <g d' fis>16 r8
  <d' fis g>16 ~ ~ ~ <d fis g>16 <c fis>8. ~ ~ | % 133
  <c fis>4 ~ ~ <c fis>16 <c d>8. ) ~ ~ <c d>2 ~ ~ <c d>16 r8 r16 | % 134
  \tempo 4=80 \tempo 4=80 | % 134
  r4 r16 <c d>8 \f ( e,16 ~ e16 <g fis'>8 ) r16 r2 | % 135
  \time 5/8  R8*5 | % 136
  r8 r16 fis'16 \f ( ~ fis16 e16 c8 ) <g' b>8 | % 137
  \time 5/4  <e g>16 ( <e, g>8 ) r16 r1 | % 138
  \time 5/8  R8*5 | % 139
  \time 5/4  r4 r8 r16 <b' fis'>16 \f ~ ~ <b fis'>16 \< r8 <c fis g>16
  ~ ~ ~ <c fis g>16 <b g'>8. ~ ~ <b g'>4 ~ ~ | \barNumberCheck #140
  <b g'>16 <e, g>8. \! \ff ~ -> ~ <e g>4 ~ ~ <e g>4 ~ ~ <e g>16 r16 r8
  r4 | % 141
  R4*5 | % 142
  \time 5/8  r2 r16 <c' fis g>16 \mf ( ~ ~ ~ | % 143
  <c fis g>16 \< e16 d8 ) <g, d'>8 ( <b c e>16 \! <d e fis>8 \f ) r16
  | % 144
  \time 5/4  r4 r8 r16 d16 \mf ~ -> d2. ~ | % 145
  \time 5/8  d4. ~ d16 r16 r8 | % 146
 
 
 \time 5/4  R4*5  ^\fermataMarkup % ^"silently remove F sharp ebow" 
 
     ^\markup { \pad-markup #af_globalpad {
     \hbracket {
   \column {
       \line { \bold Silently }
      \line { remove C\sharp EBow. }
      \line { Pause as required. }
      \line {}
    }}
     }}
 
 
 ^\markup {\ebow_two } 
 | % 147
  \tempo 4=62 | % 147
  R4*5 | % 148
  \time 5/8  r16 <e, g>8 \mf -. <c' fis>16 ( <d e>8 c8 ) <e fis>16 -.
  fis16 ~ | % 149
  fis16 r16 r2 | \barNumberCheck #150
  \time 5/4  \arpeggioArrowUp \arpeggioArrowUp \arpeggioArrowUp <b, e
  fis>1 \arpeggio \arpeggio \arpeggio \arpeggioNormal
  \arpeggioNormal \arpeggioNormal r4 | % 151
  \time 5/8  r2 r16 g16 \mf ~ | % 152
  \time 5/4  g16 <e g d'>8. ~ -> ~ ~ <e g d'>4 ~ ~ ~ <e g d'>16 <e d'>8.
  ~ ~ <e d'>2 ~ ~ | % 153
  \time 3/16  <e d'>16 r8 | % 154
  \time 3/4  R2.*2 | % 156
  r4 r4 b'32 \f ( <e fis>32 <d e>8 ) <d fis>32 -> <e g>32 ~ -- ~ | % 157
  \time 5/8  <e g>4. ~ ~ <e g>32 <gis, d'>32 -> <e g b>8. | % 158
  \time 3/16  cis32 ( fis32 g16 ) ais,32 cis32 ~ | % 159
  \time 5/4  cis32 d'32 -> d8. ~ d16 <c fis>32 ( <ais e'>32 <d fis g>8
  cis8 ) <b fis'>16 <c fis>16 ~ ~ <c fis>16 e,8 -- e16 -> <e fis'>8 --
  <e fis'>8 -- | \barNumberCheck #160
  \time 3/16  | \barNumberCheck #160
  <b' g'>16 \sfz -> <b e>16 \sfz -> <fis' g>16 \sfz -> | % 161
  \time 5/4  | % 161
  e,16 \f <ais c fis>8. ~ ~ ~ <ais c fis>16 <gis b>16 ( <gis d'>8
  <fis, gis b>16 ) <c'' fis>8 ( <b e g>16 ) fis16 ( -- e8 -- <gis, e'>16
  ) -> <gis b e>8 -> r16 <ais' fis'>16 -> | % 162
  \time 3/4  <b d fis>16 -. <ais, b>16 -. <fis e'>16 -. b16 -. <b d>4
  <b g'>8 -- <g' fis'>16 -> r16 | % 163
  \time 5/4  | % 163
  \tempo 4=70 r8 r16 <b c fis>16 \mf ~ ~ ~ <b c fis>8 <g e' fis>8 r2 r4
  | % 164
  \time 3/4  r8 fis'16 \mp ~ -> fis8 r16 r32 b,32 ~ -> b8 <e, d'>16 ~
  -- ~ <e d'>8 ~ ~ | % 165
  \time 5/4  <e d'>4. ~ ~ <e d'>8. r16 r4 \tempo 4=64 <b' fis'>16 \ff
  -> <d fis>16 ~ ~ <d fis>16 c16 <gis, b e>16 cis32 ( <gis b>32 ) | % 166
  \numericTimeSignature\time 4/4  <fis e'>32 <e'' fis>32 ( <e, b'>16
  <cis g'>16 <b e>16 ) e16 <gis, b>8. ~ ~ <gis b>16 e'8 e16 ~ e8. r16
  | % 167
  \time 3/4  r4 d'16 ( -> <ais, b>16 <fis' c'>16 b,16 ) <b e b'>4 -> | % 168
  \time 5/4  <fis b>8 b16 <gis cis>16 <e' b' d>16 ( <g g'>8 e'16 ) fis16
  -. r16 r8 \tempo 4=55 <d fis>8 \mp ( <g, d' fis fis>16 cis,16 <e
  fis>16 ) r16 r8 | % 169
  \time 3/16  | % 169
  <e e fis>16 \sfz b'16 \sfz r16 | \barNumberCheck #170
  \time 3/4  | \barNumberCheck #170
  \tempo 4=62 b16 \f b,16 <c' e fis>8 -- <b, g'>16 <b' g'>8 -- g16
  <ais, b>4 | % 171
 % R2.*2 \fermataMarkup | % 173
   R2.| R2. \fermataMarkup | % 173
  \time 5/8  R8*5 | % 174
  \time 5/4  | % 174
  \tempo 4=64 <gis e'>8 \f -- b'16 -> <cis, d e>16 ~ ~ ~ <cis d e>16
  <fis b>8 -- <b, g'>16 fis''8 -- <c d>8 -- <cis e>16 <b fis'>16 <c d
  g>16 fis16 fis,4 -- | % 175
  \time 3/16  <fis, gis e'>16 -> r8 | % 176
  \time 5/4  b16 <ais b>8 <b cis>16 <fis b>16 <ais e'>8 e'16 <ais, e'>8
  <e' b'>16 -> <fis, gis b>16 -> b32 ( cis32 c'32 g'32 c,8 ) ~ c4 | % 177
  \numericTimeSignature\time 4/4  r4 r2 <d e>16 \f ( <b fis' g>16 <g b
  g'>16 gis16 ) | % 178
  \time 3/4  \arpeggioArrowUp \arpeggioArrowUp \arpeggioArrowUp <gis b
  g'>4 \arpeggio \arpeggio \arpeggio \arpeggioNormal
  \arpeggioNormal \arpeggioNormal b,8 \f -- <b e>16 ( d'16 ) <fis g>16
  -> g8 g16 | % 179
  \time 5/4  <c, fis>16 fis8 cis,16 <b fis'>16 ( <fis cis' g'>16 ) <g'
  ais g'>16 ( <e gis c>16 ) ~ ~ ~ <e gis c>8 r8 r2 |
  \barNumberCheck #180
  \time 3/16  | \barNumberCheck #180
  \tempo 4=55 g8 \mp ( <b, e>16 | % 181
  \time 3/4  fis4 ) r2 | % 182
  R2.*2 | % 184
  \time 5/8  r8 <d'' fis>8 \mf ~ ~ <d fis>8. <b fis'>8 <e, g>16 ~ ~ | % 185
  \time 3/16  <e g>16 r16 gis,16 ~ -> | % 186
  \time 5/4  gis16 e'8 <ais, cis>16 -> fis'8 r8 g'16 ( <fis g>16 e,16
  fis16 ) <d' fis>4 -- r8 r16 <e, c'>16 \mf -> | % 187
  \time 3/16  b'8 <fis b>16 -> | % 188
  \time 5/4  | % 188
  <ais b d>16 \f <g fis'>8 <ais g'>16 <b fis'>8 <e, fis>16 -> <e fis>16
  -> <b g'>16 r16 <g' g'>16 ( <e b'>16 ) <b e>8 e16 ( b16 ) r4 | % 189
  \numericTimeSignature\time 4/4  | % 189
  \tempo 4=66 e8. -> <gis, e'>16 ~ -- ~ <gis e'>16 ais'16 c8 gis16 (
  d'16 <cis g'>16 <ais e'>16 ) <c fis>4 -. | \barNumberCheck #190
  \time 3/4  r8 b,16 ( <ais e'>16 ) r4 <b g'>16 <fis gis cis>8 r32
  <fis cis'>32 | % 191
  \time 5/4  <fis cis' b' fis'>8 <e' g c>16 ( b16 ) <ais cis d'>16 (
  <gis g''>8 b'16 ais8 ) <b, e b'>16 -> <c' e g>16 ~ ~ ~ <c e g>8. r16
  r4 | % 192
  \time 3/16  | % 192
  \arpeggioArrowUp \arpeggioArrowUp \arpeggioArrowUp <e, c' g'>16 \mf
  \fermata \arpeggio \arpeggio \arpeggio \arpeggioNormal
  \arpeggioNormal \arpeggioNormal r8 | % 193
  \time 3/4  | % 193
  \tempo 4=80 R2.*3 | % 196
  \time 5/8  | % 196
  ais,16 \f ( cis8 g'16 <d' e fis>8 ) r8 b16 <b e fis>16 ~ ~ ~ | % 197
  \time 3/16  <b e fis>16 r8 | % 198
  \time 5/4  | % 198
  \tempo 4=68 fis16 -> <b c d g>16 -> b16 -> gis16 -> <e b' fis'>4 -.
  fis16 ( <g b>8 ) r16 r8 <b, fis'>16 ( g'16 gis,8 ) g'16 fis'16 ~ | % 199
  \time 3/16  fis16 <b,, e>16 \f -> cis16 -> | \barNumberCheck #200
  \time 5/4  <c' fis>16 -> g16 -> g16 -> <b, cis e>16 fis''4 -. <fis,,
  b>8 \mf <g' b fis'>16 ( cis,16 ) <b' g'>16 r16 r8 r4 | % 201
  \time 5/4  <cis, fis b>8 fis,16 b'16 ~ b16 <ais c d fis>16 ( <e c'>16
  <b' e fis>16 <b d>16 ) r16 r8 <g c g'>32 ( c32 ) <b d>8 b16 -> <fis,
  ais>16 ( <gis e'>16 <b d' fis>16 <d' fis>16 ) | % 202
  \time 5/4  | % 202
  \tempo 4=65 <ais, g'>32 -> g''32 ~ g32 <c, d fis>32 ~ -- ~ ~ <c d
  fis>8 <c d>16 -> fis8 <fis g>16 <d e fis>8 ais,16 -> <gis cis>16
  ~ -- ~ <gis cis>16 r16 r8 r4 | % 203
  \tempo 4=55 | % 203
  R4*5 | % 204
  \time 3/4  R2. | % 205
  \time 5/8  R8*5 | % 206
  \time 5/4  r2 <c' e fis>16 \mp ~ ~ ~ <c e fis>16 <c e fis>16 -> <g
  d' fis>8 -. <e b'>8 c'16 ( <d fis g>16 ) ~ ~ ~ <d fis g>16 r8 | % 207
  \time 3/16  R8. | % 208
  \time 3/4  r8 r16 cis,16 \f ~ cis4 ~ cis8 ~ cis32 fis,16. -> | % 209
  \time 5/8  <fis g>16 <bes c>32 ( d'32 ) <g, fis'>16 -. r16 r8 r4 |
  \barNumberCheck #210
  \time 5/8  r16 b8 \f <ais, cis>16 -. r8 c'16 \mf -. <cis g'>16 -. r8
  | % 211
  \time 5/4  | % 211
  cis,16 \mf -> <ais d>8 -- <cis g'>16 <fis g>8 -> r8 <e b'>16 ( ->
  <c' d>8 <gis, e'>16 ) b8 <g' c>16 r16 r4 | % 212
  R4*10 | % 214
  r4 r16 <c e fis>8 \mp ( <c e fis>16 <g d' fis>8 <e b'>8 ) c'16 ( <d
  fis g>16 ) r8 r4 | % 215
  \time 3/4  R2. | % 216
  \time 5/8  R8*5 | % 217
  \time 5/4  | % 217
  <d g>16 \mf ( b8 gis16 ) fis'8 ( -- b,8 ) r4 r4 ais16 \mp ( cis,16 b16
  fis16 ) ~ | % 218
  \time 3/16  fis8. | % 219
  \time 5/8  r4 r8 r16 <e' ais>16 \f -> d'8 | \barNumberCheck #220
  \time 3/4  <ais, fis'>16 -> g'8 fis16 -> gis8 <e g>16 <e b'>16 ~ ~
  <e b'>16 r16 r8 | % 221
  \numericTimeSignature\time 4/4  | % 221
  <ais, fis'>16 \ff -> g'8 fis16 gis8 <e g>16 -> <e b'>16 ~ ~ <e b'>4
  r4 | % 222
  \time 2/16  R8 | % 223
  \time 10/4  r1 r16 ais,,8. \mp ~ ais1 ~ ais4 ~ | % 224
  \time 3/16  ais8. ~ | % 225
  \time 5/8  ais2 ~ ais8 ~ | % 226
  ais4 r8 <a ais cis>16 \p <ais e'>8 r16  | % 227
  \time 5/4  | % 227
  %
  %
  % Change back to original configuration
  %
  %
  %
  R4*10 
    ^\markup {\pad-markup #af_globalpad {
     \hbracket {
   \column {
       \line { \bold Silently }
      \line { replace C\sharp EBow. }
      \line { Avoid taking longer }
      \line { than rest indicated.}
    }}
    }}
  
  
  ^\markup {\ebow_one }  | % 229
  \time 2/16  R8 | \barNumberCheck #230
  \time 10/4  r1 r2
  r4 \arpeggioArrowUp \arpeggioArrowUp <ais' c'>2. \ppp ~ \arpeggio ~
  \arpeggio \arpeggioNormal \arpeggioNormal | % 231
  \time 3/16  <ais c'>8. ~ ~ | % 232
  \time 5/8  <ais c'>2 ~ ~ <ais c'>8 ~ ~ | % 233
  <ais c'>2 ~ ~ <ais c'>8 | % 234
  \time 5/4  R4*5    \fermataMarkup
  ^\markup {\pad-markup #af_globalpad {
     \hbracket {
   \column {
       \line { \bold Gradually }
      \line { release pedal to }
      \line { slowly fade out }
      \line { EBow sounds.}
    }}
    }} \bar "|."
 
}


%
%
% LEFT HAND ------------
%
%

PartPOneVoiceFive =     \relative cis, {
   \set Staff.pedalSustainStyle = #'mixed
  
  \clef "bass" \key c \major \numericTimeSignature\time 4/4 s1 \sustainOn | % 2
  <cis dis'>2.  \ppp r4 | % 3
  R1 \fermataMarkup | % 4
  \arpeggioArrowUp \arpeggioArrowUp <cis dis'>1   \pp ~ \arpeggio ~
  \arpeggio \arpeggioNormal \arpeggioNormal | % 5
  <cis dis'>2 r2 | % 6
  R1 \fermataMarkup | % 7
  \time 3/16  | % 7
  <cis dis'>8. \mp ~ ~ | % 8
  \numericTimeSignature\time 4/4  <cis dis'>1 ~ ~ | % 9
  <cis dis'>1 ~ ~ | \barNumberCheck #10
  \time 3/16  <cis dis'>8. | % 11
  \numericTimeSignature\time 4/4  R1*2 | % 13
  \time 5/8  <cis dis'>8 \sustainOff\sustainOn dis'2 ~ | % 14
  \time 6/4  dis1. | % 15
  \time 5/4  r1 <b, gis'>4 \sustainOff\sustainOn ~ ~ | % 16
  <b gis'>1 r4 | % 17
  \arpeggioArrowUp \arpeggioArrowUp \arpeggioArrowUp <b gis' cis>1 ~
  \arpeggio ~ \arpeggio ~ \arpeggio \arpeggioNormal \arpeggioNormal
  \arpeggioNormal <b gis' cis>4 | % 18
  \numericTimeSignature\time 4/4  R1 | % 19
  \time 2/16  <b dis>8 \sustainOff\sustainOn -. | \barNumberCheck #20
  \time 10/4  b\breve ~ -- b2 ~ | % 21
  \time 3/16  b8. | % 22
  \numericTimeSignature\time 4/4  R1\sustainOff\sustainOn | % 23
  \time 2/16  gis'8 -> | % 24
  \time 10/4  cis\breve ~ -- cis2 ~ | % 25
  \time 3/16  cis8. | % 26
  \numericTimeSignature\time 4/4  R1\sustainOff | % 27
  \time 2/16  <cis, dis>8 \sustainOn -. | % 28
  \time 10/4  <gis' dis'>\breve ~ ~ <gis dis'>2 | % 29
  \numericTimeSignature\time 4/4  R1 \fermataMarkup | \barNumberCheck #30
  \time 5/4  r4 <b, cis>1 \pp ~ ~ | % 31
  <b cis>1 ~ ~ <b cis>4 | % 32
  R4*10 | % 34
  \arpeggioArrowUp \arpeggioArrowUp \arpeggioArrowUp <dis' a' e'>1 ~
  \arpeggio ~ \arpeggio ~ \arpeggio \arpeggioNormal \arpeggioNormal
  \arpeggioNormal <dis a' e'>4 ~ ~ ~ | % 35
  <dis a' e'>1 ~ ~ ~ <dis a' e'>4 | % 36
  \time 5/8  R8*5 | % 37
  \numericTimeSignature\time 4/4  R1 | % 38
  \time 7/16  R4.. | % 39
  \time 6/4  r4 \arpeggioArrowUp \arpeggioArrowUp <b, dis'>2 ~
  \arpeggio ~ \arpeggio \arpeggioNormal \arpeggioNormal <b dis'>2. |
  \barNumberCheck #40
  \time 5/4  r4 <cis'' gis'>1\sustainOff\sustainOn  -- | % 41
  R4*5 \fermataMarkup | % 42
  r16 cis1 \p ~ -> cis8. ~ | % 43
  cis1 ~ cis4 ~ | % 44
  cis2 <cis e>2 \sustainOff\sustainOn \mp cis4 ~ -> | % 45
  cis2 gis,2. \sustainOff\sustainOn \mp ~ -- | % 46
  \time 5/8  gis2 ~ gis8 ~ | % 47
  \numericTimeSignature\time 4/4  gis1 ~ | % 48
  \time 7/16  gis4 ~ gis8. ~ | % 49
  \time 6/4  gis4 <b, dis' gis'>2 \mf ~ \arpeggio -> ~ \arpeggio ~
  \arpeggio <b dis' gis'>2. | \barNumberCheck #50
  \time 5/4  R4*5 | % 51
  \time 3/16  e''8. ~ | % 52
  \numericTimeSignature\time 4/4  e1 ~ | % 53
  \time 3/16  e8. ~ | % 54
  \numericTimeSignature\time 4/4  e1 | % 55
  \time 5/4  r8 <dis, cis'>2 \sustainOff\sustainOn -- <cis, cis'>2 -- r8 | % 56
  \time 5/8  <cis cis'>8 -> <cis'' e gis>2 \sustainOff\sustainOn \mf ~ ~ ~ | % 57
  \time 6/4  <cis e gis>1. ~ ~ ~ | % 58
  \time 5/4  <cis e gis>1 cis,,4 \mf ~ -- | % 59
  cis1 r4 | \barNumberCheck #60
  <cis ais'>1 \sustainOff\sustainOn \mf ~ ~ <cis ais'>4 ~ ~ | % 61
  \time 6/4  <cis ais'>1. | % 62
  \time 5/4  R4*5 \fermataMarkup | % 63
  \time 3/16  R8. | % 64
  \numericTimeSignature\time 4/4  R1 | % 65
  \time 3/16  | % 65
  b8.\sustainOff\sustainOn  \mf ~ -> | % 66
  \numericTimeSignature\time 4/4  b1 ~ | % 67
  \time 5/4  b8 dis'2 -- cis,2 ~ -- cis8 ~ | % 68
  \time 5/8  cis8 cis'2 ~ | % 69
  \time 6/4  cis1. ~ | \barNumberCheck #70
  \time 5/4  cis1 \arpeggioArrowUp \arpeggioArrowUp <cis, cis'>4 \f ~
  \arpeggio ~ \arpeggio \arpeggioNormal \arpeggioNormal | % 71
  <cis cis'>1 r4 | % 72
  b1 \p ~ b4 ~ | % 73
  \time 6/4  b1. ~ | % 74
  \time 3/16  b8. \sustainOff | % 75
  \time 5/4  R4*5 | % 76
  \time 3/16  | % 76
  <b dis'>8. \sustainOn \f ~ -> ~ | % 77
  \numericTimeSignature\time 4/4  <b dis'>1 ~ ~ | % 78
  \time 3/16  <b dis'>8. ~ ~ | % 79
  \numericTimeSignature\time 4/4  <b dis'>1 ~ ~ | \barNumberCheck #80
  \time 5/4  <b dis'>8 <b gis' dis'>2 <cis gis'>2  \sustainOff\sustainOn ~ ~ <cis gis'>8 ~ ~
  | % 81
  \time 5/8  <cis gis'>8 gis'2 ~ -> | % 82
  \time 6/4  gis1.\sustainOff\sustainOn ~ | % 83
  \time 5/4  gis1 cis4 ~ -- | % 84
  cis1 r4 | % 85
  \arpeggioArrowUp \arpeggioArrowUp \arpeggioArrowUp <b, gis' dis'>1 \sustainOff\sustainOn
  \mp ~ \arpeggio ~ \arpeggio ~ \arpeggio \arpeggioNormal
  \arpeggioNormal \arpeggioNormal <b gis' dis'>4 ~ ~ ~ | % 86
  \time 6/4  <b gis' dis'>1. ~ ~ ~ | % 87
  \time 3/16  <b gis' dis'>8. | % 88
  \time 5/4  R4*5 | % 89
  <b dis>2. \sustainOff\sustainOn \f -> <cis cis'>2 ~ ~ | \barNumberCheck #90
  <cis cis'>1 ~ ~ <cis cis'>4 ~ ~ | % 91
  \time 5/8  <cis cis'>2 ~ ~ <cis cis'>8 ~ ~ | % 92
  <cis cis'>2 ~ ~ <cis cis'>8 | % 93
  \time 5/4  cis'1 ~ cis4 | % 94
  R4*5 | % 95
  <cis a'>2. \sustainOff\sustainOn \mf -- <cis ais'>2 \sustainOff\sustainOn \f ~ -- ~ | % 96
  <cis ais'>1 ~ ~ <cis ais'>4 | % 97
  \time 5/8  R8*10 | % 99
  \time 5/4  R4*5 \fermataMarkup  | \barNumberCheck #100
  \time 5/8  R8*5 | % 101
  \time 5/4  R4*5 | % 102
  <ais' fis'>2. \sustainOff\sustainOn \mp -- cis,2 ~ -- | % 103
  cis1 ~ cis4 ~ | % 104
  \time 5/8  cis2 ~ cis8 ~ | % 105
  cis2 ~ cis8 | % 106
  \time 5/4  | % 106
  \arpeggioArrowUp \arpeggioArrowUp <cis' fis>1 \pp ~ \arpeggio -> ~
  \arpeggio \arpeggioNormal \arpeggioNormal <cis fis>4 | % 107
  cis,2. \mf e'2 \sustainOff\sustainOn ~ | % 108
  e1 ~ e4 ~ | % 109
  \time 5/8  e2 ~ e8 ~ | \barNumberCheck #110
  e2 ~ e8 | % 111
  \time 5/4  R4*5 | % 112
  \time 5/8  R8*5 | % 113
  \time 5/4  R4*5 | % 114
  cis,2. fis'2 \sustainOff\sustainOn \mf ~ -- | % 115
  fis1 ~ fis4 ~ | % 116
  \time 5/8  fis2 ~ fis8 ~ | % 117
  fis2 ~ fis8 | % 118
  \time 5/4  ais,1 ~ ais4 | % 119
  \time 5/8  R8*5\sustainOff | \barNumberCheck #120
  \time 5/4  r2 r4 <dis, gis a>2 \sustainOn \f ~ ~ ~ | % 121
  <dis gis a>1 ~ ~ ~ <dis gis a>4 ~ ~ ~ | % 122
  \time 5/8  <dis gis a>2 ~ ~ ~ <dis gis a>8 ~ ~ ~ | % 123
  <dis gis a>2 ~ ~ ~ <dis gis a>8 | % 124
  \time 5/4  b,1 \f ~ b4 | % 125
  \time 5/8  R8*5 | % 126
  \time 5/4  <cis' dis>2. \sustainOff\sustainOn \f -- <gis a cis>2 \mf ~ ~ ~ | % 127
  <gis a cis>1 ~ ~ ~ <gis a cis>4 ~ ~ ~ | % 128
  \time 5/8  <gis a cis>2 ~ ~ ~ <gis a cis>8 ~ ~ ~ | % 129
  <gis a cis>2 ~ ~ ~ <gis a cis>8 | \barNumberCheck #130
  \time 5/4  dis'1 ~ dis4 | % 131
  \time 5/8  R8*5 | % 132
  \time 5/4  R4*5 | % 133
  <gis, dis'>2. \sustainOff\sustainOn \f r2 | % 134
  <b, cis>1 \sustainOff\sustainOn \ff ~ -- ~ <b cis>4 ~ ~ | % 135
  \time 5/8  <b cis>2 ~ ~ <b cis>8 ~ ~ | % 136
  <b cis>2 ~ ~ <b cis>8 | % 137
  \time 5/4  <cis' a'>1 ~ ~ <cis a'>4 | % 138
  \time 5/8  R8*5 | % 139
  \time 5/4  R4*5 | \barNumberCheck #140
  <b, cis>2. \arpeggioArrowUp \arpeggioArrowUp \arpeggioArrowUp <cis
  gis' a'>2 \sustainOff\sustainOn ~ \arpeggio ~ \arpeggio ~ \arpeggio \arpeggioNormal
  \arpeggioNormal \arpeggioNormal  | % 141
  <cis gis' a'>1 ~ ~ ~ <cis gis' a'>4 ~ ~ ~ | % 142
  \time 5/8  <cis gis' a'>2 ~ ~ ~ <cis gis' a'>8 ~ ~ ~ | % 143
  <cis gis' a'>2 ~ ~ ~ <cis gis' a'>8 | % 144
  \time 5/4  cis'1 ~ cis4 | % 145
  \time 5/8  R8*5 \sustainOff | % 146
  %
  %
  %
  % Here, in the other hand - it is time to change the ebows.
  % indicate a pause.
  %
  %
  \time 5/4    R4*5 ^\fermataMarkup | % 147
  b,1 \sustainOn \f ~ -- b4 ~ | % 148
  \time 5/8  b2 ~ b8 ~ | % 149
  b2 ~ b8 | \barNumberCheck #150
  \time 5/4  | \barNumberCheck #150
  \arpeggioArrowUp \arpeggioArrowUp \arpeggioArrowUp <b cis' a'>1 \sustainOff\sustainOn \f ~
  \arpeggio -> ~ \arpeggio ~ \arpeggio \arpeggioNormal \arpeggioNormal
  \arpeggioNormal <b cis' a'>4 | % 151
  \time 5/8  R8*5 | % 152
  \time 5/4  R4*5 | % 153
  \time 3/16  | % 153
  <b cis gis'>8. \sustainOff\sustainOn \f -> | % 154
  \time 3/4  | % 154
  dis'2 \< -- cis4 ~ -- | % 155
  cis8. cis16 ~ cis4 <gis cis>4 \! \ff ~ ~ | % 156
  <gis cis>8. cis16 ~ cis16 cis,16 cis'8 -> dis8 cis16 gis16 ~ | % 157
  \time 5/8  gis16 cis2 ~ cis16 ~ | % 158
  \time 3/16  cis8. | % 159
  \time 5/4  <cis dis>4 <cis, gis'>8 b16 cis'16 cis,16 cis'8 cis16
  cis,2 ~ | \barNumberCheck #160
  \time 3/16  cis8. | % 161
  \time 5/4  <b cis>4 \sustainOff\sustainOn cis16 b8 cis'16 <cis dis>8 dis8 <cis, gis'>4 cis4
  | % 162
  \time 3/4  <b gis'>16 b8 <gis' cis>16 ~ ~ <gis cis>16 <cis dis>16
  cis,16 ( dis'16 ) <cis, cis'>8 -- cis16 -> r16 | % 163
  \time 5/4  r4 r4 e''2. \sustainOff\sustainOn ~ | % 164
  \time 3/4  e2. ~ | % 165
  \time 5/4  e2 r4 r8 <gis,, dis'>4 \sustainOff\sustainOn -> <gis dis'>8 ~ ~ | % 166
  \numericTimeSignature\time 4/4  <gis dis'>8 <cis, gis'>8 b16 gis'8
  gis16 r16 cis8 dis16 cis,8 dis'16 -> b,16 ~ | % 167
  \time 3/4  b16 cis16 gis'8 cis8 \sustainOff\sustainOn r8 r4 | % 168
  \time 5/4  R4*5 | % 169
  \time 3/16  dis8. \sustainOff\sustainOn | \barNumberCheck #170
  \time 3/4  <cis dis>2 gis4 ~ | % 171
  gis8. <b, cis>16 ~ -> ~ <b cis>4 <cis cis'>4 -> | % 172
  R2.\fermataMarkup | % 173
  \time 5/8  R8*5 | % 174
  \time 5/4  cis4 \sustainOff\sustainOn <gis' dis'>8 b,16 gis'16 gis16 <cis dis>8 cis,16
  gis'2 | % 175
  \time 3/16  gis8. \sustainOff\sustainOn -> | % 176
  \time 5/4  <gis cis>4 -> dis'16 gis,8 -> dis'16 <b, cis>8 -> gis'8
  cis4 r4 | % 177
  \numericTimeSignature\time 4/4  r2 r4 <gis dis'>8 \sustainOff\sustainOn -> <cis dis>16 <b,
  cis>16 ~ ~ | % 178
  \time 3/4  <b cis>16 <gis' dis'>16 \sustainOff\sustainOn r8 r2 | % 179
  \time 5/4  R4*5 | \barNumberCheck #180
  \time 3/16  R8. \sustainOff | % 181
  \time 3/4  | % 181
  <b, gis'>2 \sustainOn \mp <gis' cis>4 \sustainOff\sustainOn \< ~ ~ | % 182
  <gis cis>8. <b, cis gis'>16 ~ ~ ~ <b cis gis'>4 <b gis'>4 ~ ~ | % 183
  <b gis'>8. dis'16 \! \mf ~ -- dis16 cis16 <cis, gis'>8 <cis cis'>8
  dis'16 -> cis16 ~ | % 184
  \time 5/8  cis16 cis2 \sustainOff\sustainOn ~ cis16 ~ | % 185
  \time 3/16  cis8. | % 186
  \time 5/4  <gis cis>4 \sustainOff\sustainOn cis8 b,16 -> cis16 -> dis'16 gis,8 cis,16 cis'2 \sustainOff\sustainOn
  ~ | % 187
  \time 3/16  cis8. | % 188
  \time 5/4  cis4 \sustainOff\sustainOn dis16 cis,8 b16 dis'8 cis,8 gis'4 \sustainOff\sustainOn r4 | % 189
  \numericTimeSignature\time 4/4  cis,8 \sustainOff\sustainOn cis'8 b,16 -> cis'8 -- gis16
  -> r16 cis,8 gis'16 <b, gis'>8 dis'16 <cis dis>16 ~ ~ |
  \barNumberCheck #190
  \time 3/4  <cis dis>16 b,16 dis'8 r4 r4 | % 191
  \time 5/4  R4*5 | % 192
  \time 3/16  <b, dis'>8. \sustainOff\sustainOn \f -> | % 193
  \time 3/4  cis2 \mf <b cis' dis>4 \< ~ ~ ~ | % 194
  <b cis' dis>8. <cis' dis>16 ~ ~ <cis dis>4 <b, cis>4 ~ ~ | % 195
  <b cis>8. <gis' dis'>16 ~ ~ <gis dis'>16 cis,16 -> gis'8 <b, gis'
  dis'>8 <b cis'>16 \! \f -> <cis gis' cis>16 ~ -> ~ ~ | % 196
  \time 5/8  <cis gis' cis>16 <b gis'>2 \sustainOff\sustainOn ~ ~ <b gis'>16 ~ ~ | % 197
  \time 3/16  <b gis'>8. | % 198
  \time 5/4  <gis' b cis>4 \sustainOff\sustainOn -> r8 b16 \sustainOff\sustainOn gis16 dis'16 <b, cis'>8 <cis
  dis'>16 cis2 ~ | % 199
  \time 3/16  cis8. | \barNumberCheck #200
  \time 5/4  <cis cis'>4 \sustainOff\sustainOn -- r16 b8 dis'16 -> gis,8 -- r8 r4 <b, dis'>4 \sustainOff\sustainOn
  \ff -- | % 201
  \time 5/4  <cis cis'>8 -> <gis' dis'>8 -> b,4 <b dis>8 dis'16 cis16 ~ cis16
  cis,8 dis'16 dis16 dis,16 cis'8 -> | % 202
  \time 5/4  cis16 r16 r8 r1 | % 203
  r2 r4 r8 r16 cis4 \sustainOff\sustainOn \mf ~ cis16 ~ | % 204
  \time 3/4  cis4.. e'4 ~ e16 ~ | % 205
  \time 5/8  e8. ~ e4.. ~ | % 206
  \time 5/4  e2 ~ e16 ~ e4 ~ e4.. ~ | % 207
  \time 3/16  e16 ~ e8 | % 208
  \time 3/4  cis,,4 \sustainOff\sustainOn \f ~ cis8. \< <cis gis' cis>16 ~ ~ ~ <cis gis'
  cis>4 ~ ~ ~ | % 209
  \time 5/8  <cis gis' cis>8 <cis gis' cis>2 \sustainOff\sustainOn \! \ff | \barNumberCheck
  #210
  \time 5/8  cis'8. \sustainOff\sustainOn \ff -> <gis cis>4 <cis dis>8 cis16 -> | % 211
  \time 5/4  <cis dis>4 cis,8 -> r8 cis'8 \ff -> gis16 cis,16 dis'16
  -> gis,16 -> cis,16 -> r16 r4 | % 212
  r2 r8 cis'2 \sustainOff\sustainOn \p ~ cis8 ~ | % 213
  cis8 e'2 ~ e2 ~ e8 ~ | % 214
  e4. ~ e4 ~ e2 ~ e8 | % 215
  \time 3/4  | % 215
  <cis, dis>4 \sustainOff\sustainOn \f ~ ~ <cis dis>8. <b, gis' cis>16 ~ -> ~ ~ <b gis' cis>4
  ~ ~ ~ | % 216
  \time 5/8  <b gis' cis>8 <gis' cis>2 ~ ~ | % 217
  \time 5/4  <gis cis>4 <b, gis' dis'>4 gis'16 -> <cis dis>8 -- b,16
  -> cis8 <b dis>4. ~ ~ | % 218
  \time 3/16  <b dis>8. ~ ~ | % 219
  \time 5/8  <b dis>8. b4 \fermata \sustainOff\sustainOn cis8 \sustainOff\sustainOn -> cis16 | \barNumberCheck
  #220
  \time 3/4  <cis dis>8 \sustainOff\sustainOn -> gis'16 cis16 ~ <cis, cis'>16 gis'16 -> gis8
  -> cis,4 -- | % 221
  \numericTimeSignature\time 4/4  <cis dis>8 \sustainOff\sustainOn gis'16 cis16 ~ cis16 gis16
  -> gis8 -> cis,4 -- r4 | % 222
  \time 2/16  | % 222
  dis'8 \sustainOff\sustainOn \mf -> | % 223
  \time 10/4  <cis, cis'>\breve ~ -> ~ <cis cis'>2 ~ ~ | % 224
  \time 3/16  <cis cis'>8. ~ ~ | % 225
  \time 5/8  <cis cis'>4 ~ ~ <cis cis'>16 dis'4 ~ dis16 ~ | % 226
  dis2 ~ dis8 \sustainOff | % 227
  \time 5/4  R4*10 | % 229
  \time 2/16  | % 229
  dis8 \sustainOn \pp -> | \barNumberCheck #230
  \time 10/4  b,\breve ~ -> b2 ~ | % 231
  \time 3/16  b8. ~ | % 232
  \time 5/8  b4 r16 cis4 \pp ~ cis16 ~ | % 233
  cis2 ~ cis8 | % 234
  \time 5/4  R4*5 \fermataMarkup \sustainOff \bar "|."
}


% The score definition
\score {
  <<
 \override Score.MetronomeMark.padding = #3
     % add ----------------- \with { \bravuraOn} to use bravura font
     
    \new PianoStaff 
       <<
    


      \set PianoStaff.instrumentName = "Piano"
      \set PianoStaff.shortInstrumentName = ""
      \context Staff = "1" <<
         \override Staff.StaffSymbol.color = #(x11-color 'Silver)
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
      >> \context Staff = "2" <<
         \override Staff.StaffSymbol.color = #(x11-color 'Silver)
        \context Voice = "PartPOneVoiceFive" { \PartPOneVoiceFive }
      >>
    >>

  >>
  \layout {}

}

