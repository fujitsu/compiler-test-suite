SUBROUTINE SUB (X, Y)
   INTEGER X (5)
   INTEGER Y (7)
   X = (/ 1, 2, 3, 4, 5 /)
   Y = (/ 1, 2, 3, 4, 5, 6, 7 /)
END SUBROUTINE SUB

PROGRAM MAIN
   INTEGER A (9)
   CALL SUB (A (1:5), A (3:9))
   PRINT *,A
END PROGRAM MAIN