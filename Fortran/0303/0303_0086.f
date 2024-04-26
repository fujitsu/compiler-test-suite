      INTEGER*4 A(20),B(20),C(20),RA(20),RB(20),RC(20)
      LOGICAL*4 L(20)
      DATA  A,B,C/20*5,20*2,20*7/
      DATA  L/20*.TRUE./
      DATA  RA/20*14/
      DATA  RB/20*7/
      DATA  RC/20*2/
!
      DO 11 I=1,20,2
        L(I)=.FALSE.
        RB(I)=10
        RC(I)=5
  11  CONTINUE
      DO 10 I=1,20
        N1=A(I)
        N2=B(I)
        N3=C(I)
        IF (L(I)) THEN
          C(I)=B(I)
        ELSE
          C(I)=A(I)
        ENDIF
        B(I)=A(I)+C(I)
        A(I)=N1+N2+N3
 10   CONTINUE
      DO 20 I=1,20
        IF (A(I).NE.RA(I)) GOTO 90
        IF (B(I).NE.RB(I)) GOTO 90
        IF (C(I).NE.RC(I)) GOTO 90
 20   CONTINUE
      WRITE(6,*) 'ok'
      GOTO 99
 90   CONTINUE
      WRITE(6,*) 'ng'
      WRITE(6,*) 'A= ',A
      WRITE(6,*) 'B= ',B
      WRITE(6,*) 'C= ',C
      WRITE(6,*) 'N1=',N1
      WRITE(6,*) 'N2=',N2
      WRITE(6,*) 'N3=',N3
 99   CONTINUE
      STOP
      END
