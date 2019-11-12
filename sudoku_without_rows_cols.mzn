% Soduko

array[1..9, 1..9] of var 1..9: sudoku;

include "alldifferent.mzn";

constraint forall(row, col in [1,4,7])( alldifferent(i,j in 0..2)(sudoku[row+i,col+j]) );

solve satisfy;

output [ "sudoku:\n" ] ++
  [ show(sudoku[i,j]) ++
      if j = 9 then
        if i mod 3 = 0 /\ i < 9 then "\n\n" else "\n" endif
      else
        if j mod 3 = 0 then "  " else " " endif
      endif
  | i,j in 1..9 ];

% Sudoku instance

sudoku = [|
_, 3, _, _, _, _, _, _, _|
_, _, _, 1, 9, 5, _, _, _|
_, 9, 8, _, _, _, _, 6, _|
8, _, _, _, 6, _, _, _, _|
4, _, _, _, _, 3, _, _, 1|
_, _, _, _, 2, _, _, _, _|
_, 6, _, _, _, _, 2, 8, _|
_, _, _, 4, 1, 9, _, _, 5|
_, _, _, _, _, _, _, 7, _|
|];