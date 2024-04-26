      REAL*4 A(20),B(20),C(20)
      DATA  A,B,C/60*1./
      DO 10 I=3,20
        S=A(I)
        B(I)=S+B(I-2)+C(I)
        C(I)=B(I)*2.
  10  CONTINUE
      WRITE(6,*) 'B= ',B
      WRITE(6,*) 'C= ',C
      X=0.
      DO 20 I=3,20
        S=A(I)
        X=X*B(I)+X*S
        A(I)=X
  20  CONTINUE
      WRITE(6,*) 'A= ',A
      DO 30 I=3,20
        S=A(I)
        B(I)=S+B(I-2)+C(I)
        C(I)=B(I)
  30  CONTINUE
      WRITE(6,*) 'B= ',B
      WRITE(6,*) 'C= ',C
      DO 40 I=3,19
        S=A(I)
        B(I)=S+B(I-2)+C(I)
        A(I)=B(I+1)+C(I)
        C(I)=A(I)-2.
  40  CONTINUE
      WRITE(6,*) 'A= ',A
      WRITE(6,*) 'B= ',B
      WRITE(6,*) 'C= ',C
      S1=0.
      S2=0.
      S3=0.
      DO 50 I=3,20
        S1=S1+A(I)-S2
        S2=S1+B(I)-S3
        S3=S3+C(I)-S1
  50  CONTINUE
      WRITE(6,*) 'S1= ',S1
      WRITE(6,*) 'S2= ',S2
      WRITE(6,*) 'S3= ',S3
      J=0
      DO 60 I=1,20
        IF (A(I).GT.10.0) GOTO 61
          J=J+1
          B(J)=A(I)
  60  CONTINUE
  61  CONTINUE
      WRITE(6,*) 'J= ',J
      WRITE(6,*) 'B= ',B
      J=1
      DO 70 I=1,20
        IF (C(I).GT.10.0) GOTO 71
          A(I)=B(J)
          J=J+1
  70  CONTINUE
  71  CONTINUE
      WRITE(6,*) 'J= ',J
      WRITE(6,*) 'A= ',A
      J=1
      DO 80 I=1,19
        IF (C(I).GT.10.0) GOTO 81
          A(I)=B(J)
          J=J+1
          C(J)=B(I)
  80  CONTINUE
  81  CONTINUE
      WRITE(6,*) 'J= ',J
      WRITE(6,*) 'A= ',A
      WRITE(6,*) 'B= ',B
      STOP
      END
