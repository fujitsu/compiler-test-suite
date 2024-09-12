      PROGRAM MAIN
      REAL*8 A(50),B(50),T
      INTEGER*4 I
      DATA A(1)/Z'D5123456789ABCDE'/,
     .     A(2)/Z'CE7FFFFFFFFFFFFF'/,
     .     A(3)/Z'CE80000000000000'/,
     .     A(4)/Z'CE80000000000001'/,
     .     A(5)/Z'4E7FFFFFFFFFFFFF'/,
     .     A(6)/Z'4E80000000000000'/,
     .     A(7)/Z'4E80000000000001'/,
     .     A(8)/Z'8110000000000000'/,
     .     A(9)/Z'0000000000000000'/,
     .     A(10)/Z'0110000000000000'/,
     .     A(11)/Z'4DFFFFFFFFFFFFFF'/,
     .     A(12)/Z'4E10000000000000'/,
     .     A(13)/Z'4E10000000000001'/,
     .     A(14)/Z'34123456789ABCDE'/,
     .     A(15)/Z'78FFFFFFFFFFFFFF'/,
     .     T/-33/

      DO 10  I=16,50
        A(I)=A(I-1)/T
      IF(A(I).EQ.0) THEN
         A(I)=A(I-1)*110**7
      ENDIF
   10 CONTINUE
      A(16)=-1.5
      A(17)=-1.522222
      A(18)=-2.222222
      A(19)=1.522222
      A(20)=2.222222
      A(21)=-5.424522
      A(22)=-1.624522

      DO 20 I=1,50
        B(I)=DINT(A(I))
   20 CONTINUE

      WRITE(6,*) B

      STOP
      END
