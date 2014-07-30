<pre>
This file contains the lilypond sources and some surrounding context
from the html files.  The entire html file could not be processed
because python cannot handle strings of any significant size.

Several patches were needed to get lilypond-book to work right,
so good luck.  You'll need it.

This was compiled using lilypond version 2.0.1, using this command:
    lilypond-book -f html Beethoven2.ly

Patches:
This patch makes lilypond-book work correctly with latin1 characters.
--- lilypond-2.0.1/tex/lilyponddefs.tex	Thu Sep 18 07:19:33 2003
+++ lilyponddefs.tex	Wed May 19 18:18:36 2004
@@ -55,6 +55,7 @@
         \endgroup
         \def\lilyponddocument{}
         \documentclass[a4paper]{article}
+        \usepackage[latin1]{inputenc}
         \pagestyle{empty}
         % \begin is defined as \outer in texinfo, thus we use \csname
         \csname begin\endcsname{document}

This patch makes the filename option work correctly.
--- lilypond-2.0.1/scripts/out/lilypond-book	Sun Jan 11 12:42:20 2004
+++ ./lilypond-book	Thu May 20 11:11:13 2004
@@ -732,8 +732,6 @@
 }
 ''' % (optstring, music_size, linewidth, indent, notime) + body
 
-	if orig_name:
-		body = '\\renameinput \"%s\"\n%s' % (orig_name, body)
 	
 
 	# ughUGH not original options
@@ -1251,7 +1249,7 @@
 
 		original_name = os.path.basename (original_name)
 		
-		base = unique_file_name (content)
+		base = original_name
 		outname = base + '.ly'
 		changed = update_file (content, outname)
 
</pre>
-----------------------File: 015.png----------------------------
<p>
<center>
<lilypond notime filename="etude1">
\clef treble 
\relative f'' { 
f16 a f g e f c e b d a b
}
</lilypond>
</center>
<p>
I wish all the fingers to be used; and also in similar
ones, such as these,--
<p>
<lilypond notime filename="etude2">
\clef treble 
\relative f'' { 
c16 e d f e g d f
}
</lilypond> &c.
<lilypond notime filename="etude3">
\clef treble 
\relative f'' { 
g16 e f d e c d b
}
</lilypond> &c.
<p>
-----------------------File: 029.png----------------------------
<p>
Where are the coverlets for the beds?
<p>
<center>
<lilypond nofragment filename="where">
\score{
\addlyrics
\new Staff \notes\relative f'' {
\clef treble  e1 f1 \bar "" }
\new Lyrics \lyrics { Where? where? }
\paper{
raggedright = ##t
indent = #0
\translator{ 
\StaffContext minimumVerticalExtent = #'(-3 . 4) 
              \remove Time_signature_engraver }
}}
</lilypond>
</center>
<p>
-----------------------File: 042.png----------------------------
<p>
261.
<p>
TO RIES.
<p>
Vienna, April 16, 1819.
<p>
DEAR RIES,--
<p>
Here are the <i>Tempi</i> of the Sonata.
<p>
1st Allegro, Allegro (alone), erase the <i>assai</i>.
Maelzel's metronome 
<lilypond nofragment filename="halfnote">
% not worth the effort?
\score {
\new RhythmicStaff \notes { c2 }
\paper {
\translator { \RhythmicStaffContext 
\remove Clef_engraver 
\remove Staff_symbol_engraver
\remove Time_signature_engraver
}
raggedright = ##t
indent = #0
}
}
</lilypond>
= 138.
<p>
2d movement, Scherzoso. Maelzel's metronome
<lilypond nofragment filename="halfnote">
% not worth the effort?
\score {
\new RhythmicStaff \notes { c2 }
\paper {
\translator { \RhythmicStaffContext 
\remove Clef_engraver 
\remove Staff_symbol_engraver
\remove Time_signature_engraver
}
raggedright = ##t
indent = #0
}
}
</lilypond>
= 80.
<p>
3d movement, Maelzel's metronome
<lilypond nofragment filename="eighthnote">
% not worth the effort?
\score {
\new RhythmicStaff \notes { c8 }
\paper {
\translator { \RhythmicStaffContext 
\remove Clef_engraver 
\remove Staff_symbol_engraver
\remove Time_signature_engraver
}
raggedright = ##t
indent = #0
}
}
</lilypond>
= 92.
<p>
Observe that a previous bar is to be inserted
here, namely:--
<p>
<center>
<lilypond nofragment filename="newbar">
\score{
\new PianoStaff <<
\new Staff \notes\relative c' {
\clef treble \key d \major \time 6/8
<< R2. s4.^"New bar." >> |
<cis fis a cis>4\sustainDown a'8 << { a fis g } \\ { cis, cis <g cis e> } >>
}
\new Staff \notes {
\clef bass \key d \major \time 6/8
<< { a4. cis' | fis s } \\
{ <a,, a,>4. <cis, cis> | 
<fis, cis> <fis, cis fis>8 <a, cis a> <g, cis g>
} >>
\bar "" }
>>
\paper{
indent = #0
raggedright = ##t
\translator{\ScoreContext SpacingSpanner \set #'spacing-increment = #3 }
}}
</lilypond>
</center>
<p>
4th movement, Introduzione--largo. Maelzel's
metronome
<lilypond nofragment filename="sixteenthnote">
% not worth the effort?
\score {
\new RhythmicStaff \notes { c16 }
\paper {
\translator { \RhythmicStaffContext 
\remove Clef_engraver 
\remove Staff_symbol_engraver
\remove Time_signature_engraver
}
raggedright = ##t
indent = #0
}
}
</lilypond>
= 76.
<p>
-----------------------File: 043.png----------------------------
<p>
5th and last movement, 3/4 time. Maelzel's metronome
<lilypond nofragment filename="halfnote">
% not worth the effort?
\score {
\new RhythmicStaff \notes { c2 }
\paper {
\translator { \RhythmicStaffContext 
\remove Clef_engraver 
\remove Staff_symbol_engraver
\remove Time_signature_engraver
}
raggedright = ##t
indent = #0
}
}
</lilypond>
= 144.
<p>
<center>
<lilypond notime filename="aac">
\new Staff \notes { 
\clef treble \key bes \major \time 3/4
a''2. | a''4( c'''2)
\bar ""
}
</lilypond>
</center>
<p>
<p>
-----------------------File: 060.png----------------------------
<p>
277.
<p>
Vienna, Sept. 21, 1819.
<p>
In honor of the visit of Herr Schlesinger of Berlin.
<p>
[Music: Four staves (SATB), B-flat major, 4/4 time, repeating.
                                 Glaube und hoffe
                      Glaube und hoffe  und hoffe
           Glaube und hoffe,     Glaube und hoffe
Glaube und hoffe,
]
<lilypond nofragment filename="glaube">
\score {
<<
\addlyrics
\new Staff \notes \relative f'' { 
\clef soprano \key bes \major \time 4/4
r1 \bar "|:"
r1
r1
f2 d,4 bes' |
ees2 d \bar ":|"
}
\new Lyrics \lyrics {
Glau -- be und hof -- fe
}
\addlyrics
\new Staff \notes \relative c'' { 
\clef alto \key bes \major \time 4/4
r1 \bar "|:"
r1
c2 bes4 bes |
a2 bes4 f |
g( a) bes2 \bar ":|"
}
\new Lyrics \lyrics {
Glau -- be und hof -- fe und hof -- fe
}
\addlyrics
\new Staff \notes \relative bes { 
\clef tenor \key bes \major \time 4/4
r1 \bar "|:"
bes2 a4 a |
ees'2 d |
bes4( ees) d d |
c2 bes \bar ":|"
}
\new Lyrics \lyrics {
Glau -- be und hof -- fe, glau -- be und hof -- fe
}
\addlyrics
\new Staff \notes \relative f { 
\clef bass \key bes \major \time 4/4
f2 bes,4 bes \bar "|:"
g'2 f |
r1
r1 
f2 bes,4 bes \bar ":|"
}
\new Lyrics \lyrics {
Glau -- be und hof -- fe,
}
>>
\paper {
indent = #0
raggedright = ##t
\translator {
\StaffContext
minimumVerticalExtent = #'(-3 . 4)
}}
}
</lilypond>
<p>
-----------------------File: 071.png----------------------------
<p>
288.
<p>
TO HIS HIGHNESS THE ARCHDUKE RODOLPH.
<p>
[Music: Treble clef, C major.
Seiner Kaiserlichen Hoheit!
Dem Erzherzog Rudolph!
Dem geistlichen Fürsten!
Alles Gute! alles Schöne!
alles Gute! alles Schöne!
alles alles Gute, alles alles Schöne!
alles Gute! alles Schöne!
alles Gute, alles Schöne!
alles alles Gute, alles Schöne!
alles Gute, alles Schöne!
alles Gute, alles Schöne!]
<p>
<lilypond nofragment filename="rudolph">
% may need to insert more line breaks
segnomark = \mark \markup { \small \musicglyph #"scripts-segno" }

fanfare = \notes \relative g' { \autoBeamOff
     <g c e>16^\f <g c e> <g c e> <g c e> <g c e> <g c e> <a c f>4 <a c f>8
r16^\fermata
     r8 <g c e>16^\f <g c e> <g c e> <g c e> <g c e>4 <g b d>8 r16^\fermata
     <e a c>8^\p <e a c> <e a c>16 <e a c> <e gis b>4 <c a'> r16^\fermata 
}

fanfaremelody = \notes \relative c' { \autoBeamOff
     c16_\f c c c c c f,4 f8 r16_\fermata 
     r8 c'16_\f c c c g4 g8 r16_\fermata
     a8_\p a a16 a e4 a r16_\fermata |
}

melody = \notes \relative c'' {
\segnomark
\time 4/4
% the cadenza confuses the accidentals in the first measure
\partial 4 d8^"Mäßig." b |
a4 g r d'8 e |
f4 e r e8 f |
g4 c, r f8 e |
d2 c4 r |
\segnomark
d8 b b b c[ d] d4 |
a8 b c e f4 e |
c4. c8 b4 c |
b8 a g[ f] e4 r |
\segnomark
r4 g8 g a[( b]) b4 |
r4 g8 c c[( d]) g,4 |
e8[( g]) c[( e]) g, g g8. g16 |
g8 c b[( g]) g4 r |
\segnomark
r4 d8 b a4 g |
r4 e'8 c a[ b] c[ d] |
r4 e8 e d4 c |
g'8 g g,4 c \bar "||"
}

words = \lyrics {
Sei -- ner Kai -- ser -- li -- chen Ho -- heit!
Dem Erz -- her -- zog Ru -- dolph!
Dem geist -- li -- chen Für -- sten!
Al -- les Gu -- te! al -- les Schö -- ne!
al -- les Gu -- te! al -- les Schö -- ne!
al -- les al -- les Gu -- te, al -- les al -- les Schö -- ne!
al -- les Gu -- te! al -- les Schö -- ne!
al -- les Gu -- te, al -- les Schö -- ne!
al -- les al -- les Gu -- te, al -- les Schö -- ne!
al -- les Gu -- te, al -- les Schö -- ne!
al -- les Gu -- te, al -- les Schö -- ne!
}

\score {
\addlyrics
\new Staff \notes { 
  \clef treble \key c \major
  \property Staff.TimeSignature \set #'break-visibility = #all-invisible
  \autoBeamOff
\forgetAccidentals
  \cadenzaOn
  << \fanfare \\ \fanfaremelody >>
  \cadenzaOff
  \bar "|"
  \break
  \property Staff.TimeSignature \set #'break-visibility = #begin-of-line-visible
  \melody
}
\new Lyrics \words

\paper {
  indent = #0
  %raggedright = ##t
  \translator {
    \StaffContext
    minimumVerticalExtent = #'(-3 . 4)
  }
}
}
</lilypond>
<p>
-----------------------File: 080.png----------------------------
<p>
[Music: Bass clef, F major, 2/4 time, <i>Lively in the upper octave</i>.
O Tobias! 
O Tobias! Dominus Ha--s linger o!
o! o Tobias!]
<lilypond nofragment filename="tobias1">
words = \lyrics {
O To -- bi -- as! 
O To -- bi -- as! 
Do -- mi -- nus Ha - - - - - - - - - - - s lin -- ger o!
o! o To -- bi -- as!
}

melody = \notes \relative a {
\property Score.BarNumber \set #'break-visibility = #all-invisible
\clef bass \key f \major \time 2/4
\autoBeamOff
a8^\markup{\italic "Lively in the upper octave."} d, f d \bar "|:"
R2 |
cis'8 a cis a |
d4 c!8 c |
\break
bes4 a |
g c |
\clef treble
g'' f | 
e d |
g f |
\break
e d |
c bes8 bes |
f'2^\sf |
d^\sf |
f8 bes, d bes \bar ":|"
}

\score {
\addlyrics
\new Staff \melody
\new Lyrics \words

\paper {
  indent = #0
  %raggedright = ##t
  \translator {
    \StaffContext
    minimumVerticalExtent = #'(-3 . 4)
  }
}
}
</lilypond>
<p>
But scarcely did I wake when away flew the
Canon, and I could not recall any part of it. On
returning here however, next day, in the same carriage,
(that of a poor Austrian musician,) I resumed
my dream-journey, being, however, on this occasion
wide awake, when lo and behold! in accordance
with the laws of the association of ideas the
same Canon again flashed across me; so being now
awake I held it as fast as Menelaus did Proteus,
only permitting it to be changed into three parts.
<p>
-----------------------File: 081.png----------------------------
<p>
[Music: Treble, Tenor, and Bass clef staves, F major, 2/4 time.
O Tobias! 
O Tobias! 
Dominus Ha--slinger o!
]
<lilypond nofragment filename="tobias2">
treblewords = \lyrics {
O To -- bi -- as! 
O To -- bi -- as! 
Do -- mi -- nus Ha - - - - - - - - - - - - slin -- ger o! o!
}

tenorwords = \lyrics {
O To -- bi -- as! 
O To -- bi -- as To -- bi -- as!
To -- bi -- as To -- bi -- as To -- bi -- as To -- bi -- as
To -- bi -- as Do -- mi -- nus Has -- lin -- ger o! o!
}

basswords = \lyrics {
O To -- bi -- as!
O To -- bi -- as!
}

treblemelody = \notes \relative a' {
\property Score.BarNumber \set #'break-visibility = #all-invisible
\clef treble \key f \major \time 2/4
\autoBeamOff
R2 \bar "|:"
a8 d, f d |
R2 |
cis'8 a cis a |
\break
R2 |
d4 c!8 c |
bes4 a |
g c |
bes a |
\break 
g f |
bes a |
g f |
e d8 d |
a'2 |
f \bar ":|"
}

tenormelody = \notes \relative c' {
\property Score.BarNumber \set #'break-visibility = #all-invisible
\clef tenor \key f \major \time 2/4
\autoBeamOff
R2 \bar "|:"
d4. d8 |
e4 a, | 
e'4. e8 |
e4 d8 d |
g g, r c |
e4 c8 c |
e4 f8 a, |
bes[ c] d d |
\break
d4 d8 d |
d4 d |
c d8 d |
cis4 b8 b |
r4 f |
r d' \bar ":|"
}

bassmelody = \notes \relative a {
\property Score.BarNumber \set #'break-visibility = #all-invisible
\clef bass \key f \major \time 2/4
\autoBeamOff
a8 d, f d \bar "|:"
R2 |
cis'8 a cis a |
R2 |
d4 c!8 c |
bes4 a |
g c |
bes a |
g f |
\break
bes a |
g f |
e d8 d |
a'2 |
f |
a8 d, f d \bar ":|"
}

\score {
<<
\addlyrics
\new Staff \treblemelody
\new Lyrics \treblewords
\addlyrics
\new Staff \tenormelody
\new Lyrics \tenorwords
\addlyrics
\new Staff \bassmelody
\new Lyrics \basswords
>>
\paper {
  indent = #0
  %raggedright = ##t
  \translator {
    \StaffContext
    minimumVerticalExtent = #'(-3 . 4)
  }
}
}
</lilypond>
<p>
-----------------------File: 174.png----------------------------
<p>
403.
<p>
TO F. RIES.
<p>
Vienna, April 9, 1825.
<p>
MY DEAR GOOD RIES,--
<p>
I write only what is most pressing! So far as I
can remember in the score of the Symphony [the
9th] that I sent you, in the first hautboy, 242d
bar, there stands [Music: F E D] instead of [Music: F E E].
I have carefully revised all the instrumental parts,
but those of the brass instruments only partially,
though I believe they are tolerably correct. I
would already have sent you my score [for performance
at the Aix musical festival], but I have
still a concert in prospect, if indeed my health admits
of it, and this MS. is the only score I possess.
I must now soon go to the country, as this is the
only season when I profit by it.
<lilypond nofragment filename="fed">
\score{
\new Staff \notes { f''16[^"F" e''^"E" d'']^"D" }
\paper {
raggedright = ##t
indent = #0
\translator {
\StaffContext
\remove Time_signature_engraver
\remove Clef_engraver
}}}
</lilypond>
<lilypond nofragment filename="fee">
\score{
\new Staff \notes { f''16[^"F" e''^"E" e'']^"E" }
\paper {
raggedright = ##t
indent = #0
\translator {
\StaffContext
\remove Time_signature_engraver
\remove Clef_engraver
}}}
</lilypond>
<p>
-----------------------File: 178.png----------------------------
<p>
On a certain person of the name of Schwencke.[2]
<p>
[Music: treble clef, key of F major, 3/4 time.
/*
Schwen-ke dich, Schwen-ke dich oh-ne
Schwän-ke, oh-ne Schwän-ke, oh-ne Schwän-ke, oh-ne
Schwän-ke ÷ ÷ ÷ ÷ ÷ 
Schwen-ke dich, schwen-ke dich, schwen-ke dich ÷ ÷
÷ ÷ ÷ ÷ ÷ ÷ ÷ ÷
*/]
<lilypond nofragment filename="schwenke">
segnomark = \mark \markup { \small \musicglyph #"scripts-segno" }
segnover = \markup { \small \musicglyph #"scripts-segno" }

melody = \notes \relative c'' {
\property Score.BarNumber \set #'break-visibility = #all-invisible
\autoBeamOff
\clef treble \key f \major \time 3/4
c8._\f^\segnover f,16 d'4_\sf r |
d8. g,16 e'4_\sf r8 a,16 a | 
\break
f_\ff f f f f f f f f f f f |
\break
e e d d c c d d e e c c |
\break
r4^\segnover f8. bes,16 bes'4 |
r4 g8. c,16 c'4 |
\break
f16 f f,8 f'16 f f,8 \break f'16 f f,8 |
g16 g f8 g16 g f8 bes16 bes a8  |
\bar "||"
}

words = \lyrics {
Schwen -- ke dich, 
Schwen -- ke dich oh -- ne
Schwän -- ke, oh -- ne Schwän -- ke, oh -- ne Schwän -- ke, oh -- ne
Schwän -- ke _ -- _ _ -- _ _ -- _ _ -- _ _ -- _
Schwen -- ke dich, schwen -- ke dich, schwen -- ke dich, _ -- _ - 
_ -- _ - _ -- _ - _ -- _ - _ -- _ - 
}

wordsB = \lyrics {
Schwen -- ke dich, 
Schwen -- ke dich oh -- ne
Schwän -- ke, oh -- ne Schwän -- ke, oh -- ne Schwän -- ke, oh -- ne
Schwän -- ke Schwän -- ke Schwän -- ke Schwän -- ke Schwän -- ke Schwän -- ke 
Schwen -- ke dich, schwen -- ke dich, schwen -- ke dich, schwen -- ke dich, 
schwen -- ke dich, schwen -- ke dich, schwen -- ke dich, schwen -- ke dich.
}

\score{
\addlyrics
\new Staff \melody
\new Lyrics \wordsB
\paper {
%raggedright = ##t
indent = #0
\translator {
\StaffContext
\remove Bar_number_engraver
minimumVerticalExtent = #'(-3 . 4)
}}}
</lilypond>
<p>
On a certain person of the name of Hoffmann.
<p>
[Music: treble clef, key of C, 3/4 time.
/*
Hoff-mann! Hoff-mann! Sei ja kein Hof-mann!
ja kein Hof-mann! nein, nein ÷ nein ÷ ÷ ÷
ich hei-ße Hoff-mann und bin kein Hof-mann]
*/]
<lilypond nofragment filename="hoffmann">
segnomark = \mark \markup { \small \musicglyph #"scripts-segno" }
segnover = \markup { \small \musicglyph #"scripts-segno" }

melody = \notes \relative c'' {
\property Score.BarNumber \set #'break-visibility = #all-invisible
\autoBeamOff
\clef treble \key c \major \time 3/4
c4^\markup{ \translate #(cons -2 0) \segnover }^\f g2 |
e'4 c2 |
R2. |
a4 a a |
aes2^\p f4 |
\break
r e f |
g2 c,4 |
r^\segnover c'8^\f c e4 |
r8 c e f g4 |
\break
e4 e e |
g f2 |
f4 c c |
c,2.^\p ~ |
c2 c4 \bar "||"
}

words = \lyrics {
Hoff -- mann! Hoff -- mann!
Sei ja kein Hof -- mann!
ja kein Hof -- mann!
nein, nein - nein - - -
ich hei -- ße Hoff -- mann und bin kein Hof -- mann
}

wordsB = \lyrics {
Hoff -- mann! Hoff -- mann!
Sei ja kein Hof -- mann!
ja kein Hof -- mann!
nein, nein, nein nein, nein, nein, nein
ich hei -- ße Hoff -- mann und bin kein Hof -- mann
}

\score{
\addlyrics
\new Staff \melody
\new Lyrics \wordsB
\paper {
%raggedright = ##t
indent = #0
\translator {
\StaffContext
\remove Bar_number_engraver
minimumVerticalExtent = #'(-3 . 4)
}}}
</lilypond>
<p>
-----------------------File: 179.png----------------------------
<p>
<p>
[Music: treble clef, C-major.
Das Schö-ne mit dem Guten.]
<lilypond nofragment filename="schoene">
segnomark = \mark \markup { \small \musicglyph #"scripts-segno" }
segnover = \markup { \small \musicglyph #"scripts-segno" }

melody = \notes \relative e'' {
\property Score.BarNumber \set #'break-visibility = #all-invisible
\property Score.RehearsalMark \set #'break-visibility = #all-visible
\autoBeamOff
\clef treble \key c \major \time 4/4
\partial 4 e4 |
\bar "|:" \segnomark
e4. e16[ d] c4 a |
b2 a4 e' |
\bar ":|" \segnomark
}

words = \lyrics {
Das Schö -- ne mit dem Gu -- ten. Das
}

\score{
\addlyrics
\new Staff \melody
\new Lyrics \words
\paper {
raggedright = ##t
indent = #0
\translator {
\StaffContext
\remove Bar_number_engraver
\remove Time_signature_engraver
minimumVerticalExtent = #'(-3 . 4)
}}}
</lilypond>
<p>
-----------------------File: 180.png----------------------------
<p>
<p>
[Music: C-clef on bottom line, A major, marked "Solostimme". 
E-rde.]
<lilypond nofragment filename="erde1">
segnomark = \mark \markup { \small \musicglyph #"scripts-segno" }
segnover = \markup { \small \musicglyph #"scripts-segno" }

voiceone = \context Voice = voiceone \notes \relative g' {
% really bad stem lengths this way!!!
\stemUp e8[^"Solostimme." e' d cis] \stemBoth b fis4. ~ |
fis8 fis
}

voicetwo = \context Voice = voicetwo \notes \relative g' {
\stemDown e4 s
}

melody = \notes \relative g' {
\clef soprano \key a \major \time 4/4
\autoBeamOff
   \property Staff.NoteCollision
      \override #'merge-differently-headed = ##t
<< \voiceone \voicetwo >>
}

words = \lyrics {
E1 -- rde.4
}

\score{
<<
\new Staff \melody
\new Lyrics \words
>>
\paper {
raggedright = ##t
indent = #0
\translator {
\StaffContext
\remove Bar_number_engraver
\remove Time_signature_engraver
minimumVerticalExtent = #'(-3 . 4)
}}}
</lilypond>
<p>
I wish it to be written thus:--
<p>
[Music: E-rde. (with different notes)]
<lilypond nofragment filename="erde2">
segnomark = \mark \markup { \small \musicglyph #"scripts-segno" }
segnover = \markup { \small \musicglyph #"scripts-segno" }

voicea = \context Voice = voicea \notes \relative g' {
\voiceOne e8[( e' d cis] b) fis4. |
fis8 fis
}

voiceb = \context Voice = voiceb \notes \relative g' {
\voiceTwo e4 fis8 gis fis2 ~ | fis8
}

melody = \notes \relative g' {
\clef soprano \key a \major \time 4/4
\autoBeamOff
   \property Staff.NoteCollision
      \override #'merge-differently-headed = ##t
<< \voicea \voiceb >>
}

words = \lyrics {
E1 -- rde.4
}

\score{
<<
\new Staff \melody
\new Lyrics \words
>>
\paper {
raggedright = ##t
indent = #0
\translator {
\StaffContext
\remove Bar_number_engraver
\remove Time_signature_engraver
\remove Clef_engraver

minimumVerticalExtent = #'(-3 . 4)
}}}
</lilypond>
<p>
<p>
-----------------------File: 185.png----------------------------
<p>
[Music: Treble clef, C major, 2/2 time.
Doctor sperrt das Thor dem Todt: 
Rote hilft auch aus der Roth. 
Doctor sperrt das Thor dem Todt: 
Rote hilft auch aus der Roth.]
<lilypond nofragment filename="doctor">
\score {
  \addlyrics
    \new Staff \notes {
\property Score.BarNumber \set #'break-visibility = #all-invisible
      \clef treble \key c \major \time 2/2
    \relative c'' {
          c2 c 
          b a
          g f
          e1 \bar "||"
          e2 e
          f2 g
          a b
          c1 \bar "||"
          c,2 c 
          d e
          f g
          a1 \bar "||"
          c2 d4( f)
          g( f) f( e)
          e( d) d2
          c1 \bar "||"
    }}
    \new Lyrics \lyrics { 
Doc -- tor sperrt das Thor dem Todt: Ro -- te \break
hilft auch aus der Roth. Doc -- tor sperrt das \break
Thor dem Todt: Ro -- te hilft auch aus der Roth. 
  }
 \paper { 
   indent = #0
   \translator {
     \StaffContext
     minimumVerticalExtent = #'(-3 . 4)
   }
 }
}
</lilypond>
<p>
-----------------------File: 210.png----------------------------
<p>
438.
<p>
TO THE COPYIST.[1]
<p>
Read <i>violino 2do</i>--the passage in the first <i>Allegretto</i>
in the 1st violin--thus:--
<p>
[Music: Treble clef. sixteenth notes.] &c.
<lilypond notime filename="allegretto1">
\relative c''' {
c16([ b a c] a[ g f a]) f([ e dis f] c[ b a c]) | a([ g f a])
}
</lilypond> &c.
<p>
So write it in this way; in the first <i>Allegretto</i>,
mark the signs of expression in all the four parts:
<p>
[Music: Treble and Bass clefs.]
<lilypond notime filename="allegretto2">
<< 
\new Staff 
\notes \relative c'' {
\clef treble \key c \major \time 4/4
<a a'>8.(\> <cis e>16)\! <cis e>8\p-| <d f>-|
<e g>8.(\> <b d>16)\! <b d>8\p-. <cis e>-. |
<a f'>8.( <c, a'>16) <c a'>8\p-. <g' b>-.
<a c>\pp-. <b d>-. <c e>-. <d f>-. \bar "||"
}
\new Staff
\notes \relative g, {
\clef bass \key c \major \time 4/4
<g f'>8.( <g' bes>16) <g bes>8 <f a>
<e g>8.( <f aes>16) <f aes>8 <e g> |
<d f>8. <e' g>16 <e g>8 <d f> 
<c e> <b d>-. <a c>-. <g b>-. \bar "||"
}
>>
</lilypond>
<p>
-----------------------File: 211.png----------------------------
<p>
The notes are all right; so do not misunderstand
me.
<p>
Now, my good friend, as to your mode of writing--<i>obbligatissimo</i>;
but the signs 
<lilypond nofragment filename="p-cresc-decresc">
% not worth the effort?
\score {
\new RhythmicStaff \notes { \cadenzaOn s8-\p s1-\< s1-\!\> s4-\! }
\paper {
\translator { \RhythmicStaffContext 
\remove Clef_engraver 
\remove Staff_symbol_engraver
\remove Time_signature_engraver
}
raggedright = ##t
indent = #0
}
}
</lilypond>
&c., are shamefully neglected, and often, very often,
in the wrong place, which is no doubt owing to
haste. For Heaven's sake impress on Kempel
[a copyist] to copy everything just as it stands;
look carefully over my present corrections, and you
will find all that you have to say to him. When 
<lilypond nofragment filename="staccato">
% not worth the effort?
\score {
\new RhythmicStaff \notes { s8^. }
\paper {
\translator { \RhythmicStaffContext 
\remove Clef_engraver 
\remove Staff_symbol_engraver
\remove Time_signature_engraver
}
raggedright = ##t
indent = #0
}
}
</lilypond>
is put over a note, 
<lilypond nofragment filename="staccatissimo">
% not worth the effort?
\score {
\new RhythmicStaff \notes { s8^| }
\paper {
\translator { \RhythmicStaffContext 
\remove Clef_engraver 
\remove Staff_symbol_engraver
\remove Time_signature_engraver
}
raggedright = ##t
indent = #0
}
}
</lilypond>
 is not to take its place, and <i>vice
versa</i>. It is not the same thing to write 
<lilypond nofragment filename="3-staccatissimo">
% not worth the effort?
\score {
\new RhythmicStaff \notes { \stemDown c4-| c4-| c4-| }
\paper {
\translator { \RhythmicStaffContext 
\remove Clef_engraver 
\remove Staff_symbol_engraver
\remove Time_signature_engraver
}
raggedright = ##t
indent = #0
}
}
</lilypond>
and
<lilypond nofragment filename="3-staccato">
% not worth the effort?
\score {
\new RhythmicStaff \notes { \stemDown c4-. c4-. c4-. }
\paper {
\translator { \RhythmicStaffContext 
\remove Clef_engraver 
\remove Staff_symbol_engraver
\remove Time_signature_engraver
}
raggedright = ##t
indent = #0
}
}
</lilypond>.
The 
<lilypond nofragment filename="crescendo">
% not worth the effort?
\score {
\new RhythmicStaff \notes { \cadenzaOn s1-\< s4-\! }
\paper {
\translator { \RhythmicStaffContext 
\remove Clef_engraver 
\remove Staff_symbol_engraver
\remove Time_signature_engraver
}
raggedright = ##t
indent = #0
}
}
</lilypond>
are often purposely placed
after the notes. For instance:--
<lilypond notime filename="example">
\clef bass << {a,2~ a,8[ e]} { s4. s4\> s8\!} >>
</lilypond>.
The ties to be just as they are now placed. It is
not synonymous to write 
<lilypond nofragment filename="slur1">
\score {
\new Staff \notes { 
\clef bass
c16( b, c8)
}
\paper {
\translator { \StaffContext 
\remove Clef_engraver 
\remove Time_signature_engraver
}
raggedright = ##t
indent = #0
}
}
</lilypond>
or thus 
<lilypond nofragment filename="slur2">
\score {
\new Staff \notes { 
\clef bass
c16( b,) c8
}
\paper {
\translator { \StaffContext 
\remove Clef_engraver 
\remove Time_signature_engraver
}
raggedright = ##t
indent = #0
}
}
</lilypond>.
Such is our will and pleasure! I have passed no
less than the whole forenoon to-day, and yesterday
afternoon, in correcting these two pieces, and I am
actually quite hoarse from stamping and swearing.
<p>
In haste, yours,
<p>
BEETHOVEN.

-----------------------File: 214.png----------------------------

<h3 class="letter" id="let442">442.<br>
TO HERR FRIEDRICH KUHLAU.</h3>

<p class="date">Baden, September 3, 1825.</p>

<p>[Music: Alto clef, B-flat major, 4/4 time.
Kuhl nicht lau, nicht lau, Kuhl nicht lau, Kuh-lau nicht lau. 
Kuhl nicht lau, Kuhl nicht lau, nicht lau.
Kuhl nicht lau, Kuhl nicht lau, Kuhl nicht lau.]</p>
<p>
<lilypond nofragment filename="kuhlau">
segnomark = \markup { \small \musicglyph #"scripts-segno" }

\score {
\addlyrics

\new Staff \notes \relative c' { 
\property Staff.explicitClefVisibility = #end-of-line-invisible
\clef alto \time 4/4 \key bes \major
r4 \bar "|:" \mark\segnomark bes4( a) c |
b2. b4 |
c g'( aes) f |
g ges f c' \bar "||"
\break
bes r^\segnomark r2 |
r4 g( f) aes |
g \clef treble \key bes \major ees'( d) f |
ees2. ees4 |
d^\segnomark r4 r2 |
\break
\clef alto r4 g,( f) a |
g ees( d!) f |
ees des( c) a |
d4 \bar ":|"
}

\new Lyrics \lyrics {
Kuhl nicht lau, nicht lau, Kuhl nicht lau, Kuh -- lau nicht lau. 
Kuhl nicht lau, Kuhl nicht lau, nicht lau.
Kuhl nicht lau, Kuhl nicht lau, Kuhl nicht lau.
}

\paper {
\translator { \StaffContext 
minimumVerticalExtent = #'(-3 . 4) 
\remove Time_signature_engraver
}
%raggedright = ##t
indent = #0
}
}
</lilypond>
</p>

<p>I must admit that the champagne went a little to
my head yesterday, and I learned once more from
experience, that such things rather prostrate than
promote my energies; for, though able to respond
fluently at the moment, still I can no longer recall
what I wrote yesterday.</p>

<p>Sometimes bear in mind your attached</p>

<p class="signature">BEETHOVEN.</p>

-----------------------File: 218.png----------------------------

<h3 class="letter" id="let445">445.<br>
TO HERR VON SCHLESINGER.</h3>

<p class="date">Vienna, September 26, 1825.</p>

<p>[Music: Si non per Por-tus, per
mu-ros, per mu-ros, per mu-ros.]</p>
<p>
<lilypond nofragment filename="portus">
segnomark = \markup { \small \musicglyph #"scripts-segno" }

\score {
\addlyrics

\new Staff \notes \relative c' { 
\property Score.RehearsalMark \set #'break-visibility = #all-visible
\autoBeamOff
\clef tenor \time 4/4 \key f \major
r4 \bar "|:" \mark\segnomark c4 d4. c8 |
c4 b r c |
bes g r bes! |
e, f8 f c' c r4 |
\property Score.RehearsalMark \set #'self-alignment-X = #1
r4 \bar ":|" \mark\markup{\translate #(cons -1 0) \segnomark}
}

\new Lyrics \lyrics {
Si non per Por -- tus, per
mu -- ros, per mu -- ros, per mu -- ros.
}

\paper {
\translator { \StaffContext 
minimumVerticalExtent = #'(-3 . 4) 
}
%raggedright = ##t
indent = #0
}
}
</lilypond>
</p>

<p>My worthy friend, I wish you the loveliest
bride! And I take this opportunity of asking you
to present my compliments to Herr Marx, in Berlin,
and beg him not to be too hard on me, and
sometimes to allow me to slip out at the backdoor.</p>

<p class="signature">Yours,<br>
BEETHOVEN.</p>

-----------------------File: 223.png----------------------------

<h3 class="letter" id="let450">450.<br>
TO THE ABBÉ MAXIMILIAN STADLER.</h3>

<p class="date">February 6, 1826.</p>

<p class="salutation">REVEREND AND HONORED SIR,--</p>

<p>You have really done well in rendering justice
to the <i>manes</i> of Mozart by your inimitable pamphlet,
which so searchingly enters into the matter
[the Requiem], and you have earned the gratitude
of the lay and the profane, as well as of all who
are musical, or have any pretensions to be so. To
bring a thing of this kind forward as H.W.<sup class="footref"><a href="#footnote233">[1]</a></sup> has
done, a man must either be a great personage, or a
nonentity. Be it remembered also that it is said
this same person has written a book on composition,
and yet has ascribed to Mozart such passages as the
following:--</p>

<p>[Music: Bass clef]</p>
<p>
** x's
<lilypond notime filename="mozart">
\clef bass \key c \major
<<
{ des16[ ees des c]  d[ ees c d!]  ees[ f ees d]  e[ f d e] }
\\
{ des,4              d,            ees,           e, }
>>
\bar ""
</lilypond>
</p>

<p>and has added such things as,--</p>

<p>[Music: Treble clef, B-flat major.
A-gnus de-i
pec-ca-ta mun-di.]</p>
<p>
<lilypond nofragment filename="agnus-dei">
\score {
<<
\new Staff \notes \relative c'' { 
\clef treble \time 4/4 \key bes \major
\cadenzaOn
d2 f8[ ees] c \bar "|"
bes4 f
}

\new Lyrics \lyrics {
A2. -- gnus8 de4 -- i4
}

\new Lyrics \lyrics {
pec2 -- ca4 -- ta8 mun4 -- di.4
}
>>

\paper {
\translator { \StaffContext 
minimumVerticalExtent = #'(-3 . 4) 
\remove Time_signature_engraver
}
raggedright = ##t
indent = #0
}
}
</lilypond>
</p>

<p>[Music: Treble clef, B-flat major.
Qui tol-lis pec-ca-ta, qui tol-lis pec-ca-ta,]</p>
<p>
***x's
<lilypond nofragment filename="tollis">
\score {

\addlyrics

\new Staff \notes \relative c'' { 
\clef treble \time 3/4 \key bes \major
\autoBeamOff
\partial 8 ees8 \bar "||"
ees8[ d] f4. b,8 |
c[ bes] c4. ees8 |
ees[ d] aes'4 b, |
c8[ bes] c4
}

\new Lyrics \lyrics {
Qui tol -- lis pec -- ca -- ta, qui tol -- lis pec -- ca -- ta,
}

\paper {
\translator { \StaffContext 
minimumVerticalExtent = #'(-3 . 4) 
\remove Time_signature_engraver
}
raggedright = ##t
indent = #0
}
}
</lilypond>
</p>

<p>as samples of his own composition! H.W.'s astonishing
knowledge of harmony and melody recall the
old composers of the Empire,--Sterkel, [illegible,]
Kalkbrenner (the father), André, &amp;c.</p>

<i>Requiescant in pace!</i> I especially thank you,
my dear friend, for the pleasure you have conferred
on me by your pamphlet. I have always accounted
myself one of Mozart's greatest admirers, and shall
continue to be so to my last breath. I beg, venerable
sir, for your blessing, and I am, with sincere
esteem and veneration, yours,

<p class="signature">BEETHOVEN.</p>

-----------------------File: 233.png----------------------------

<h3 class="letter" id="let460">460.<br>
TO TOBIAS HASLINGER.<sup class="footref"><a href="#footnote242">[1]</a></sup></h3>

<p>[Music: Bass clef. C major.
Bester--]</p>
<p>
<lilypond nofragment filename="bester">
\score {
<<
\new Staff \notes \relative c { 
\clef bass \time 4/4 \key c \major
\autoBeamOff
\partial 4  c8 d |
\autoBeamOn
e f16 e f8 e16 d    e8 g c b |
c c a4^\trill g \bar "|"
}

\new Lyrics \lyrics {
Be8 -- ster - - - - - - - - - - - - 
}
>>

\paper {
\translator { \StaffContext 
minimumVerticalExtent = #'(-3 . 4) 
\remove Time_signature_engraver
}
raggedright = ##t
indent = #0
}
}
</lilypond>
</p>

<p>No time is left to-day for further words and vocalization.
I beg you will at once deliver the enclosed
letter. Pray forgive my causing you this
trouble; but, as you are the owner of an artistic
post-office, it is scarcely possible not to take advantage
of this.</p>

<p>You will perceive that I am now at Gneixendorf.
The name sounds like the breaking of an axletree.
The air is healthy. The <i>memento mori</i> must be
applied to all else. Most marvellous and best of all
Tobiases, we salute you in the name of the arts and
poets!</p>

<p class="signature">I remain yours,<br>
BEETHOVEN.</p>

-----------------------File: 235.png----------------------------

<h3 class="letter" id="let462">462.<br>
TO CARL HOLZ.</h3>

<p class="date">Dec. 1826.</p>

<p class="salutation">YOUR OFFICIAL MAJESTY,--</p>

<p>I wrote to you on my arrival here a few days
ago, but the letter was mislaid; I then became so
unwell that I thought it best to stay in bed. I shall
therefore be very glad if you will pay me a visit.
You will find it less inconvenient, because every
one has left Döbling to go to town. I only add, in
conclusion,<sup class="footref"><a href="#footnote244">[1]</a></sup></p>

<p>[Music: Bass clef, C major, 3/4 time.
Wir ir-ren al-le Samt, Nur je-der ir-ret an-derst.]</p>
<p>
<lilypond nofragment filename="irren">
\score {
\addlyrics

\new Staff \notes \relative c { 
\clef bass \time 3/4 \key c \major
\autoBeamOff
\partial 4  c4 |
des4. des8 e e |
f4 r f |
g8 g aes4. b8 |
c4 c, \bar "||"
}

\new Lyrics \lyrics {
Wir ir -- ren al -- le Samt, Nur je -- der ir -- ret an -- derst.
}

\paper {
\translator { \StaffContext 
minimumVerticalExtent = #'(-3 . 4) 
}
raggedright = ##t
indent = #0
}
}
</lilypond>
</p>

<p class="signature">As ever, your friend,<br>
BEETHOVEN.</p>

