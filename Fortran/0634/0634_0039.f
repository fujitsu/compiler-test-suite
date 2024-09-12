      WRITE (6,10)
   10 FORMAT(1H1,5X,'====== FORTRAN ====== ... = TEST ='/)
      IP = 0
      CALL F31101(IP)
      CALL F31102(IP)
      IF (IP.NE.0 ) GO TO 30
      WRITE ( 6,20 )
   20 FORMAT(21X,'= TEST =',6X,'OK')
   30 WRITE (6 ,40 )
   40 FORMAT(6X,'END  RUN UNIT')
      STOP
      END
      SUBROUTINE F31101 (IP)
      X = 1.0E0
      DO 20 I = 1 , 10
      Z = ALOG10(X)
      C = 0.4342945
      W = C * ALOG(X)
      IF (ABS(Z-W ).LE.1.0E-5)GO TO 20
      IP = IP+1
      WRITE (6,10) X,Z,W
  10  FORMAT (1H1,20X,'==TEST== NG',10X,1HX,15X,'ALOG10(X)',15X,
     E 'ALOG(E)*ALOG(X)',/,40X,E14.7,10X,E14.7,10X,E14.7)
   20 X = X + 1.0E0
      RETURN
      END
      SUBROUTINE F31102(IP)
      DOUBLE PRECISION X,C,Z,W,N
      X = 1.0D0
      DO 30 I = 1,10
      Z = DLOG10(X)
      C = 0.434294481903252D0
      W = C* DLOG(X)
      IF(DABS(Z-W).LE.1.0D-14) GO TO 20
      IP=IP + 1
      WRITE(6,10) X, Z , W
   10 FORMAT(1H ,20X,'=TEST= NG',10X,1HX,30X,'DLOG10(X)',25X,
     E 'DLOG(E)*DLOG(X)',//,33X,D23.15,10X,D23.15,10X,D23.15)
   20 X = X + 1.0D0
   30 CONTINUE
      RETURN
      END
