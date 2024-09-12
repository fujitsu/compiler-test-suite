      REAL A(5,50000)/250000*1.0/
      REAL B(50000,5)/250000*1.0/
      CALL SUB1(A)
      CALL SUB2(B)
      CALL SUB3(A)
      CALL SUB4(B)
      CALL SUB5(A)
      CALL SUB6(B)
      WRITE(6,*) ((A(J,I),J=1,5),I=1,5)
      WRITE(6,*) ((B(J,I),J=1,5),I=1,5)
      END
      SUBROUTINE SUB1(A)
      REAL A(50000,5)
      DO 10 I=1,4
        DO 10 J=1,49999
          A(J,I)=0.0
   10 CONTINUE
      END
      SUBROUTINE SUB2(B)
      REAL B(5,50000)
      DO 10 I=1,49999
        DO 10 J=1,4
          B(J,I)=0.0
   10 CONTINUE
      END
      SUBROUTINE SUB3(A)
      REAL A(50000,5)
      DO 10 I=1,1
        DO 10 J=1,49999
          A(J,I)=0.0
   10 CONTINUE
      END
      SUBROUTINE SUB4(B)
      REAL B(5,50000)
      DO 10 I=1,49999
        DO 10 J=1,1
          B(J,I)=0.0
   10 CONTINUE
      END
      SUBROUTINE SUB5(A)
      REAL A(50000,5)
      DO 10 I=1,0
        DO 10 J=1,49999
          A(J,I)=0.0
   10 CONTINUE
      END
      SUBROUTINE SUB6(B)
      REAL B(5,50000)
      DO 10 I=1,49999
        DO 10 J=1,0
          B(J,I)=0.0
   10 CONTINUE
      END
