      PROGRAM MAIN
      INTEGER A(100)/100*1/,B,C
      LOGICAL L/.FALSE./
      
      DO 10 I=1,100
        B    = I + 1
        A(I) = I
        A(I) = IBSET(A(I),mod(A(I),30))
        C = IBCLR(A(I),mod(B,10))
        IF (A(I)) 20,30,40
   20     A(I) = A(I) + 10
          B = IBSET(C,mod(A(I),5))
          GOTO 15
   30     IF (BTEST(A(I),MOD(A(I),2))) THEN
            A(I) = IBCLR(A(I),mod(B,30))
            B = B + 1
          ENDIF
          GOTO 15
   40     A(I) = IBSET(10,mod(A(I),10))
   15   L = BTEST(B,mod(C,3))
   10 CONTINUE
      WRITE(6,*) '## A ##'
      WRITE(6,1) A
      WRITE(6,*) '## B,C,L ##'
      WRITE(6,2) B,C,L
    1 FORMAT(5I15)
    2 FORMAT(I15,I15,L15)
      STOP
      END

