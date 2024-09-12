      CALL SUB1
      CALL SUB2
      END
      SUBROUTINE SUB1
      INTEGER     A(100,100),B(100,100)
      INTEGER     C(100,100),D(100,100)
      REAL        H(100,100),O(100,100)
      REAL        P(100,100),Q(100,100)
      DO 15 I1=1,100
      DO 15 I2=1,100
        A(I2,I1)=1
        B(I2,I1)=I1
        C(I2,I1)=1
        D(I2,I1)=I2
        H(I2,I1)=1.0
        O(I2,I1)=1.0
        P(I2,I1)=1.0
        Q(I2,I1)=SIN(REAL(I1+I2))
   15 CONTINUE
      II=1
      N=104
      ASSIGN 102 TO K
      ASSIGN 103 TO K1
      ASSIGN 104 TO K2
      GOTO 100
  104 II=II+1
      IF(II.GT.10)GOTO 105
  100 GOTO 101
  102 DO 10 I2=1,99
      DO 10 I1=1,99
        A(I1,I2)=B(I1,I2)+C(I1,I2)
        D(I1,I2)=A(I1+1,I2)+C(I1,I2)
   10 CONTINUE
      GOTO 103
  101 DO 20 I2=1,99
      DO 20 I1=1,99
        D(I1,I2)=A(I1,I2+1)+C(I1,I2)
        A(I1,I2)=B(I1,I2)+C(I1,I2)
   20 CONTINUE
      GOTO K,(102,103,104)
  103 DO 30 I2=1,90
      DO 30 I1=1,90
        Q(I1,I2)=H(I1+2,I2)+P(I1,I2)
        H(I1,I2)=O(I1,I2)+P(I1,I2)
   30 CONTINUE
      GOTO (102,103,104),N
  105 WRITE(6,*)((A(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((B(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((C(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((D(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((H(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((O(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((P(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((Q(I1,I2),I1=20,100,20),I2=20,100,20)
      END
      SUBROUTINE SUB2
      INTEGER     A(100,100),B(100,100)
      INTEGER     C(100,100),D(100,100)
      DO 15 I1=1,100
      DO 15 I2=1,100
        A(I2,I1)=1
        B(I2,I1)=I1
        C(I2,I1)=1
        D(I2,I1)=I2
   15 CONTINUE
      N=1
  100 N=N+1
      IF(N.GT.100)GOTO 101
      DO 10 I2=1,99
      DO 10 I1=1,99
        A(I1,I2)=B(I1,I2)+C(I1,I2)
        D(I1,I2)=A(I1+1,I2)+C(I1,I2)
   10 CONTINUE
      GOTO 100
  101 CONTINUE
      WRITE(6,*)((A(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((B(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((C(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((D(I1,I2),I1=20,100,20),I2=20,100,20)
      END
