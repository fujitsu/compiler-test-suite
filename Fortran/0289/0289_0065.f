      WRITE(6,*)'***  START  ***'
      CALL SUB1()
      CALL SUB2()
      WRITE(6,*)'***  END   ***'
      STOP
      END

      SUBROUTINE SUB1()
      COMMON /X/B(10),D(10),F(10)
      REAL A(10),G(10),C,E,WORK(20)
      POINTER (PA,A),(PG,G)
      DO 1 I=1,20
 1       WORK(I)=I
      DO 2 I=11,20
 2       WORK(I)=70
      PA=LOC(WORK(1))
      PG=LOC(WORK(11))
      ANS=150 
      C=30
      E=50
      DO 10 I=1,10
         A(I)=C-((F(I)-G(I))*E/(B(I)+D(I))*6/5*10)+A(I)
   10 CONTINUE
      DO 20 I=1,10
          IF(A(I).NE.ANS+I) THEN
            WRITE(6,*)'***  SUB1 NG  ***',I,A(I)
            GOTO 30
          END IF
   20 CONTINUE
      A(I-1)=10.0
      C=10.0
      WRITE(6,*)'***  SUB1 OK  ***'
      GOTO 50
   30 WRITE(6,*)' '
   50 RETURN
      END

      SUBROUTINE SUB2()
      COMMON /X/B(10),D(10),F(10)
      REAL A(10),G(10),C,E,H(10),WORK(30)
      POINTER (PA,A),(PG,G),(PH,H)
      DO 1 I=1,10
 1       WORK(I)=I
      DO 2 I=11,20
 2       WORK(I)=70
      DO 3 I=21,30
 3       WORK(I)=I
      PA=LOC(WORK(1))
      PG=LOC(WORK(11))
      PH=LOC(WORK(21))
      ANS1=-8400
      ANS2=-64
      C=30
      E=50
      DO 10 I=1,10
        A(I)=C/((E/B(I))/(D(I)-F(I))/G(I))+A(I)
   10 CONTINUE
      DO 20 I=1,10
        H(I)=C/E/B(I)*(D(I)-F(I))*G(I)+H(I)
        IF(ABS(A(I)-ANS1+I)<1.0.OR.ABS(H(I)-ANS2+I)<1.0) THEN
           WRITE(6,*)'***  SUB2 NG  ***',I,A(I),H(I)
           GOTO 30
        END IF
   20 CONTINUE
      A(I-1)=10.0
      C=10.0
      WRITE(6,*)'***  SUB2 OK  ***'
      GOTO 50
   30 WRITE(6,*)' '
   50 RETURN
      END

      BLOCK DATA BLOCK1
      COMMON /X/B(10),D(10),F(10)
      DATA (B(I),I=1,10,2)/5*10/(D(I),I=1,10,2)/5*40/
      DATA (B(I),I=2,10,2)/5*10/(D(I),I=2,10,2)/5*40/
      DATA (F(I),I=1,10,2)/5*60/(F(I),I=2,10,2)/5*60/
      END
