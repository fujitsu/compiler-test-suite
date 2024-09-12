      REAL A1(10000)/10000*1.0/
      REAL A2(10000)/10000*1.0/
      REAL A3(10000)/10000*1.0/
      REAL B1(10000)/10000*1.0/
      REAL B2(10000)/10000*1.0/
      REAL B3(10000)/10000*1.0/
      REAL C(5,10000)/50000*1.0/
      N=9999
      CALL SUB1(A1,A2,A3,B1,B2,B3,C,N)
      CALL SUB2(A1,A2,A3,B1,B2,B3,C,N)
      CALL SUB3(A1,A2,A3,B1,B2,B3,C,N)
      WRITE(6,*) (A1(I),I=1,1)
      WRITE(6,*) (B1(I),I=1,1)
      WRITE(6,*) ((C(J,I),J=1,1),I=1,1)
      END
      SUBROUTINE SUB1(A1,A2,A3,B1,B2,B3,C,N)
      REAL A1(10000)
      REAL A2(10000)
      REAL A3(10000)
      REAL B1(10000)
      REAL B2(10000)
      REAL B3(10000)
      REAL C(5,10000)
      DO 10 I=1,N
        A1(I)=A2(I)+A3(I)
        B1(I)=B2(I)+B3(I)
        DO 10 J=1,4
          C(J,I)=9.0
   10 CONTINUE
      END
      SUBROUTINE SUB2(A1,A2,A3,B1,B2,B3,C,N)
      REAL A1(10000)
      REAL A2(10000)
      REAL A3(10000)
      REAL B1(10000)
      REAL B2(10000)
      REAL B3(10000)
      REAL C(5,10000)
      DO 10 I=1,N
        A1(I)=A2(I)+A3(I)
        B1(I)=B2(I)+B3(I)
        DO 10 J=1,1
          C(J,I)=9.0
   10 CONTINUE
      END
      SUBROUTINE SUB3(A1,A2,A3,B1,B2,B3,C,N)
      REAL A1(10000)
      REAL A2(10000)
      REAL A3(10000)
      REAL B1(10000)
      REAL B2(10000)
      REAL B3(10000)
      REAL C(5,10000)
      DO 10 I=1,N
        A1(I)=A2(I)+A3(I)
        B1(I)=B2(I)+B3(I)
        DO 10 J=1,0
          C(J,I)=9.0
   10 CONTINUE
      END
