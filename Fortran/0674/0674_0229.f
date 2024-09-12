      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      REAL*8  D(20,20)/400*5.5/
      REAL*8  Q(20)/20*3.2/
      COMPLEX*8 C8(20,20)/400*(4.6,2.1)/
      COMPLEX*16 C16(20,20)/400*(4.7,2.2)/
      COMPLEX*16 C32(20)/20*(4.8,2.3)/
      INTEGER*4 I4(20,20)/400*7/
      INTEGER*2 I2(20)/20*8/
      DATA  M/20/,N/20/,K/5/,L/8/
      DATA A/400*3/,B/400*1/,C/400*5/
      CALL INIT(A,400,B,400,C,400)

      DO 10 J=1,10
       DO 10 I=1,N
        B(I,J)=1.
        I4(I,J)=I
        C8(I,J)=C8(I,J)*1.2
  10   CONTINUE
      DO 11 J=1,3
       DO 11 I=1,N-2,2
        D(I,J)=D(I,J)*0.2
        C16(I,J)=C16(I+2,J)+C16(I,J)
  11   CONTINUE
      DO 12 J=1,4
       I2(J)=2
       I2(J+5)=6
       I2(J+10)=8
       I2(J+15)=J
  12   CONTINUE
      DO 13 J=5,8
       Q(J)=Q(9)*2.0
       C32(J)=(0.0,0.0)
  13   CONTINUE
      DO 14 J=1,20,3
      II=1
       DO 14 I=1,20,K
        A(I,J)=B(I,II)
        D(I,J)=0.3
        II=II+1
  14   CONTINUE

      WRITE(6,*) A,B,C,II,D,Q,C8,C16,C32,I2,I4
      STOP
      END
      SUBROUTINE INIT(A,N1,B,N2,C,N3)
      REAL*4 A(N1),B(N2),C(N3)
      DO 10 I=1,N1
10    A(I)=FLOAT(I)
      DO 20 I=1,N2
20    B(I)=FLOAT(I/10)
      DO 30 I=1,N3
30    C(I)=FLOAT(I*10)
      RETURN
      END
