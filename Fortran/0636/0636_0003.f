       PROGRAM MAIN
       INTEGER A(1200),B(1200),W(1200)
       DO 10 I = 1,1200
   10    A(I) = 1200 - I
       DO 20 I = 1,1200
   20    B(I) = I
       CALL SWAP(A,B,W)
       PRINT *, A,B,W
       STOP
       END
       SUBROUTINE SWAP(A,B,W)
       INTEGER A(1200),B(1200),W(1200)
       DO 10 I = 1,1200
   10    W(I) = A(I)
       DO 20 I = 1,1200
   20    A(I) = B(I)
       DO 30 I = 1,1200
   30    B(I) = W(I)
       RETURN
       END
