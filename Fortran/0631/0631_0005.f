      REAL A(10,1000)/10000*1.0/
      REAL B(10,1000)/10000*1.0/
      REAL A1(10,1000)/10000*1.0/
      REAL B1(10,1000)/10000*1.0/
      REAL C(1000,10)/10000*1.0/
      REAL D(1000,10)/10000*1.0/
      REAL C1(1000,10)/10000*1.0/
      REAL D1(1000,10)/10000*1.0/
      CALL SUB1(C,D,C1,D1)
      CALL SUB2(A,B,A1,B1)
      WRITE(6,*) ((C(J,I),J=1,9),I=1,9)
      WRITE(6,*) ((D(J,I),J=1,9),I=1,9)
      WRITE(6,*) ((C1(J,I),J=1,9),I=1,9)
      WRITE(6,*) ((D1(J,I),J=1,9),I=1,9)
      WRITE(6,*) ((A(J,I),J=1,9),I=1,9)
      WRITE(6,*) ((B(J,I),J=1,9),I=1,9)
      WRITE(6,*) ((A1(J,I),J=1,9),I=1,9)
      WRITE(6,*) ((B1(J,I),J=1,9),I=1,9)
      END
      SUBROUTINE SUB1(C,D,C1,D1)
      REAL C(1000,10)
      REAL D(1000,10)
      REAL C1(1000,10)
      REAL D1(1000,10)
      DO 10 I=1,1
        DO 10 J=1,999
          C(J,I)=D(J,I)+C1(J,I)+D1(J,I)
          C1(J,I)=D1(J,I)+C(J,I)+D(J,I)
   10 CONTINUE
      END
      SUBROUTINE SUB2(A,B,A1,B1)
      REAL A(10,1000)
      REAL B(10,1000)
      REAL A1(10,1000)
      REAL B1(10,1000)
      DO 10 I=1,999
        DO 10 J=1,1
          A(J,I)=B(J,I)+A1(J,I)+B1(J,I)
          A1(J,I)=B1(J,I)+A(J,I)+B(J,I)
   10 CONTINUE
      END
