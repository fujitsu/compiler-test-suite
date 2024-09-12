      INTEGER     A(100,100),B(100,100)
      INTEGER     C(100,100),D(100,100)
      CALL SUB1(a,b,c,d)
      CALL SUB2(a,b,c,d)
      CALL SUB3(a,b,c,d)
      CALL SUB4(a,b,c,d)
      END
      SUBROUTINE SUB1(a,b,c,d)
      INTEGER     A(100,100),B(100,100)
      INTEGER     C(100,100),D(100,100)
      DO 15 I1=1,100
      DO 15 I2=1,100
        A(I2,I1)=1
        B(I2,I1)=A(I2,I1)
        C(I2,I1)=1
        D(I2,I1)=I2
   15 CONTINUE
      DO 10 I2=2,99
      DO 10 I1=2,99
        D(I1,I2)=A(I1-1,I2)+C(I1,I2)
        A(I1,I2)=B(I1,I2)+C(I1,I2)
   10 CONTINUE
      ENTRY SUB2(a,b,c,d)
      DO 20 I2=10,99
      DO 20 I1=10,99
        D(I1,I2)=A(I1,I2-1)+C(I1,I2)
        A(I1,I2)=B(I1,I2)+C(I1,I2)
   20 CONTINUE
      ENTRY SUB3(a,b,c,d)
      ENTRY SUB4(a,b,c,d)
      DO 30 I2=10,90
      DO 30 I1=10,90
        D(I1,I2)=A(I1-2,I2)+C(I1,I2)
        A(I1,I2)=B(I1,I2)+C(I1,I2)
   30 CONTINUE
      WRITE(6,*)((A(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((B(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((C(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((D(I1,I2),I1=20,100,20),I2=20,100,20)
      END
