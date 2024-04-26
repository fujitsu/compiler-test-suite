      PROGRAM MAIN
      INTEGER A(5000)/5000*0/,CCC/5000/
      INTEGER B(5000)/5000*2/,D(100)/100*0/
      INTEGER FUNC1
      LOGICAL L,FUNC2
      
      WRITE(6,*)
      CALL SUB1(A,B,L,CCC)
      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*) 'SUB1  ',L
      WRITE(6,*)
      DO 30 I=1,CCC-4990
        D(I) = IBSET(I,FUNC1(A,B,CCC))
   30 CONTINUE
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*) 'FUNC1 ',D
      WRITE(6,*)
      L =  FUNC2(A,B,CCC)
      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,*) 'FUNC2 ',L
      STOP
      END
C
      SUBROUTINE SUB1(A,B,L,CCC)
      INTEGER A,B,CCC
      LOGICAL L,L2/.TRUE./,L3/.TRUE./
      DIMENSION A(CCC),B(CCC)
      DO 10 I=1,CCC
        B(I) = IBSET(I,A(I))
        IF (BTEST(B(I),A(I)+1)) THEN
          L2 = .FALSE.
        ELSE
          L3 = .FALSE.
        ENDIF
        L = L2.NEQV.L3
   10 CONTINUE
      RETURN
      END
C
      INTEGER FUNCTION FUNC1(A,B,CCC)
      INTEGER A,B,CCC
      DIMENSION A(CCC),B(CCC)
      DO 10 I=1,CCC
        A(I) = IBCLR(CCC,1)
        B(I) = IAND(IBCLR(I,0),30)
   10 CONTINUE
      DO 20 I=1,CCC
        FUNC1 = IAND(IBSET(A(I),B(I)),31)
   20 CONTINUE
      RETURN
      END
C
      LOGICAL FUNCTION FUNC2(A,B,CCC)
      INTEGER A,B,CCC
      LOGICAL L
      DIMENSION A(CCC),B(CCC)
      DO 20 I=CCC,1,-1
        A(I) = IBSET(CCC,0)
        DO 30 J=5,12
          A(I) = IBCLR(CCC,J)
   30   CONTINUE
        B(I) = IBSET(CCC,1)
        DO 40 J=5,12
          B(I) = IBCLR(B(I),J)
   40   CONTINUE
        L = BTEST(A(I),B(I))
   20 CONTINUE
      FUNC2  = L
      RETURN
      END
