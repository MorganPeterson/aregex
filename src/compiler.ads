package Compiler is
   UTFMAX : constant := 4;
   RUNEMAX : 16#10FFF#;

   Bit1 : constant := 7;
   BitX : constant := 6;
   Bit2 : constant := 5;
   Bit3 : constant := 4;
   Bit4 : constant := 3;
   Bit5 : constant := 2;

   Tx : constant := (left_shift (1, (BitX + 1)) - 1) xor 16#FF#;
   T2 : constant := (left_shift (1, (Bit2 + 1)) - 1) xor 16#FF#;
   T3 : constant := (left_shift (1, (Bit3 + 1))- 1) xor 16#FF#;
   T4 : constant := (left_shift (1, (Bit4 + 1)) - 1) xor 16#FF#;
   T5 : constant := (left_shift (1, (Bit5 + 1)) - 1) xor 16#FF#;
   Rune_1 : constant := left_shift(1, (Bit1+0*BitX)) - 1;
   Rune_2 : constant := left_shift(1, (Bit2+1*BitX)) - 1;
   Rune_3 : constant := left_shift(1, (Bit3+2*BitX)) - 1;
   Rune_4 : constant := left_shift(1, (Bit4+3*BitX)) - 1;

   MaskX = left_shift(1, BitX) - 1;
   TestX = MaskX xor 16#FF#;

   Rune_Error : String := "byte not valid";

   LISTSIZE : constant  := 10;
   BIGLISTSIZE : constant := 25 * LISTSIZE;
   NSUBEXP : constant := 32;
   NSTACK : constant := 20;
   LEXDONE : constant := False;
   YYRUNE : constant := 0;

   RUNE : constant := 0177
   OPERATOR : constant := 0200 -- Bitmask of all operators
   START : constant := 0200 -- Start, used for marker on stack
   RBRA : constant := 0201 -- Right bracket, )
   LBRA : constant := 0202 -- Left bracket, (
   BOR : constant := 0203 -- Alternation, |
   CAT : constant := 0204 -- Concatentation, implicit operator
   STAR : constant := 0205 -- Closure, *
   PLUS : constant := 0206 -- a+ == aa*
   QUEST : constant := 0207 -- a? == a|nothing, i.e. 0 or 1 a's
   ANY : constant := 0300 -- Any character except newline, .
   ANYNL : constant := 0301 -- Any character including newline, .
   NOP : constant := 0302 -- No operation, internal use only
   BOL : constant := 0303 -- Beginning of line, ^
   EOL : constant := 0304 -- End of line, $
   CCLASS : constant := 0305 -- Character class, []
   NCCLASS : constant := 0306 -- Negated character class, []
   TERINATE : constant := 0377 -- Terminate: match found
end Compiler;
