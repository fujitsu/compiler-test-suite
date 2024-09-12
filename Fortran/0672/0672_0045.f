          REAL*8 H0,HI,X,DEF
          REAL*8 ANSTBL(50,3)
          REAL*8 EULER / 0.57721566490153286D+00 /
          REAL*8 DIF0 / 0.00111D+00 /
          COMMON H0,HI,X,ANSTBL

          H0 = 0.0
          HI = 0.0
          X = 0.0

          DO 100 I= 1,3
          DO 100 J= 1,50
          ANSTBL(J,I) = 0.0
  100     CONTINUE

          DO 200 I= 1, 50
          HI = HI + 1.0/DFLOAT(I)
          H0 = DLOG( DFLOAT(I) ) + EULER
          DIF = HI - H0
          ANSTBL(I,1) = HI
          ANSTBL(I,2) = H0
          ANSTBL(I,3) = DIF
          IF( HI .LT. DLOG( DFLOAT(I) ) ) GO TO 300
          IF( DABS( HI-H0 ) .LT. DIF0 ) GO TO 400
  200     CONTINUE

          I = I - 1

  300     CONTINUE
          WRITE( 6, 900 )
  9000    FORMAT(1H1,/,20X,'** ERROR ** HARMONIC NUMBER',/,
     1           1H ,1H ,15X,'I',20X,'HI',28X,'H0',28X,'DIF'     )

          WRITE( 6, 910 ) ( J, ( ANSTBL(J,K),K=1,3 ), J=1, I )
  910     FORMAT((1H ,14X,I2,3(5X,D25.16)) )

          STOP

  400     CONTINUE
          WRITE( 6, 920 )
  9200    FORMAT(1H1,/,20X,'** OK ** HARMONIC NUMBER ', /,
     1           1H ,1H ,15X,'I',20X,'HI',28X,'H0',28X,'DIF'     )

          WRITE( 6, 910 ) ( J, ( ANSTBL(J,K),K=1,3 ), J=1, I )
  930     FORMAT((1H ,14X,I2,3(5X,D25.16) ) )

          STOP
          END
