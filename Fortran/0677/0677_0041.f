      INTEGER*4 A(10)/10*1/,B(10)/10*2/
      REAL*4    C(10)/10*0.5/,D(10),E(10),F(10)/10*2./

      DO 10 J=1,10
        F(J)=C(J)
        D(J)=SIN(C(J))
        E(J)=C(J)+D(J)+F(J)
10    CONTINUE
      WRITE(6,*) C,D,E,F

      DO 20 J=1,10
        C(J)=E(J)
        D(A(J))=C(J)
        F(J)=E(B(J))
20    CONTINUE
      WRITE(6,*) C,D,E,F
      STOP
      END
