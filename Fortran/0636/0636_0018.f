      DIMENSION A(10),B(13)
      DATA   N/9/, B/13*0.0/
      DATA   CUT/7.2D+00/
      DO 100 I = 1,N
        FI1 = I
        FI2 = N - I + 1
        A(I) = FI1
        B(I) = FI2 - 0.5
  100 CONTINUE
      I = 3
      L = 1
  110 IF( A(I+1).GE.B(L) ) GOTO 120
      L = L + 1
      GOTO 110
  120 CONTINUE
      L = L + 1
  130 I = I + 1
      A(I) = B(L+1)
      IF( I.EQ.N ) GOTO 140
      IF( B(L+1).LE.CUT ) GOTO 120
      GOTO 130
  140 CONTINUE
      WRITE(6,1000)
      WRITE(6,1100) ( A(I),B(I),I=1,N )
      STOP
 1000 FORMAT( 1H ,'TEST PROGRAM')
 1100 FORMAT( 1H ,2F10.5 )
      END
