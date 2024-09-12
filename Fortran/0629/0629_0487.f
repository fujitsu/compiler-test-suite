      REAL*4  A(10,10),B(10,10)
      DATA A/100*0/,B/100*1/
      DO 41 J=7,9
       DO 50 I=1,10
        A(I,J)=B(I,J)+6
  50   CONTINUE
       DO 44 I=1,10,3
        A(I,J)=B(I,J)
  44   CONTINUE
       DO 40 I=1,10,2
        A(I,J)=B(I,J)+7
  40   CONTINUE
  41   CONTINUE
  42   CONTINUE
      WRITE(6,*) 'A = ',A
      STOP
      END
