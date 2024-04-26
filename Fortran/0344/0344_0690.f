      PARAMETER (N1=123)
      PARAMETER (N2=29)
      PARAMETER (N3=30)
      PARAMETER (N2P = N2+1)
      REAL*4 X(0:N1,0:N2P,N3)
      REAL*4 Y(0:N1,0:N2P,N3)
      REAL*4 Z(0:N1,0:N2P,N3)
        DO 10 K1=1,N3
        DO 10 J1=0,N2P
        DO 10 I1=0,N1
          X(I1,J1,K1)=REAL(MOD((N1-I1),20))
          Y(I1,J1,K1)=REAL(MOD((N1-I1),20))
          Z(I1,J1,K1)=REAL(MOD((N1-I1),20))
   10   CONTINUE
      SSS    = 1000.0
      IDX1W1 = 0
      IDX1W2 = 0
      IDX1W3 = 0
       XXX  = 0.0
       YYY  = 0.0
       ZZZ  = 0.0
       DO 20 K = 2,N3-1
       DO 20 J = 2,N2-1
       DO 20 I =40,N1
       XWW  = X(I,J,K)
       YWW  = Y(I,J,K)
       ZWW  = Z(I,J,K)
       SNOR = (XXX-XWW)**2+(YYY-YWW)**2+(ZZZ-ZWW)**2

       IF( SNOR.LT.SSS ) THEN
        SSS    = SNOR
        IDX1W1 = I
        IDX1W2 = J
        IDX1W3 = K
       END IF
   20 CONTINUE
      WRITE(6,600) SSS
 600  FORMAT(1H , F12.3)
      WRITE(6,700) IDX1W1,IDX1W2,IDX1W3
 700  FORMAT(1H , I5)
      STOP
      END
