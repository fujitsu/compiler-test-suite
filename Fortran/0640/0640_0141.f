      PROGRAM MAIN
      REAL*8  D1(11),D2(11),D3(11)
      REAL*4  E1(11),E2(11),E3(11),ES1
      INTEGER N1(10)/10*0/,J/2/
      LOGICAL L1(10)/10*.FALSE./
      DATA    D1,E2,D3,E1,D2,E3/33*3.5,33*-1./,ES1/-1./
      DO 110 I=1,10
       IF(MOD(I,2).EQ.0) GOTO 110
        D1(I)=D2(I)*E1(I)+1.5
        D2(I+1)=E2(I)/E1(I)
        ES1=MAX(D2(I+1)**2,ES1,D1(I))
        IF(MOD(I,2).NE.1) GOTO 110
         J=J+1
 101     N1(I)=J
         D3(I)=D1(I)/2.-J
         E3(I)=I-3
 110  CONTINUE
      WRITE(6,*) D1,D2,D3,N1
      WRITE(6,*) ES1,E3,J
      DO 210 I=1,10
       IF(MOD(I,2).EQ.0) GOTO 210
        ES1=MIN(D2(I),ES1,D1(I))
        D1(I)=D2(I)*E1(I)+1.5
        D2(I+1)=E2(I)/E1(I)
        IF(MOD(I,2).NE.1) GOTO 210
         J=J-1
         N1(J)=J
         D3(J)=D1(I)/2.
         E3(I)=I-3
 210  CONTINUE
      WRITE(6,*) D1,D2,D3,N1
      WRITE(6,*) ES1,E3,J,L1
      STOP
      END
