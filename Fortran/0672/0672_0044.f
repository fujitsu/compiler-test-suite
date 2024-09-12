          COMMON I1,I3,I5,ANSTBL(50,4)

          X = 1.0
          IMAX = 50
          CALL COMPUT( X, IMAX )

          D = 5.0E-04
          CALL PRINT( D )

          STOP
          END
          SUBROUTINE COMPUT( X, IMAX )
          COMMON I1,I3,I5,ANSTBL(50,4)

          P1 = 1.0
          P2 = 2.0
          P3 = 3.0
          N1 = 1
          N2 = 2
          N3 = 3

          N4 = 4
          N5 = 1
          N6 = 2
          Y  = 3

          DO 100 I= 1, IMAX
          I1 = N1 + 1
          I2 = N2 + 2
          I3 = N3 + 3
          I4 = N4 + 4
          I5 = N5 + 5
          I6 = N6 + 6
          A1 = P1 + 1.0
          A2 = P2 + 2.0
          A3 = P3 + 3.0
          X = X + 0.1

          ANSTBL( I, 1 ) = X
     0    ANSTBL( I, 2 ) = ((X/EXP(X)-1.)+X/2.)
     1                        -((X/2.)*(EXP(X)+1.)/(EXP(X)-1.))
     0    ANSTBL( I, 3 ) = (X*(EXP(X)+1.)/(2.*(EXP(X)-1.)))
     1                        +X*(EXP(-X)+1.)/(2.*(EXP(-X)-1.))
     0    ANSTBL( I, 4 ) =-(X/2.)*((EXP(-X)+1.)/(EXP(-X)-1.))
     1                        -X/(EXP(X)-1.)-X/2.

          N1 = I1 + 1
          N2 = I2 + 2
          N3 = I3 + 3
          N4 = I4 + 4
          N5 = I5 + 5
          N6 = I6 + 6
          P1 = A1 + 1.0
          P2 = A2 + 2.0
          P3 = A3 + 3.0
          P4 = Y + 1.0
          P5 = X + 2.0
          P6 = Y + 3.0
          X = X + 0.1
  100     CONTINUE

          RETURN
          END
          SUBROUTINE PRINT( D )
          COMMON I1,I3,I5,ANSTBL(50,4)

          WRITE( 6, 100)
  1000    FORMAT( 1H1, ///  )

          DO 2000 J=1, 50

          IF( ANSTBL(J,2) .GT. D ) GO TO 1000
          IF( ANSTBL(J,3) .GT. D ) GO TO 1000
          IF( ANSTBL(J,4) .GT. D ) GO TO 1000

          WRITE( 6, 200 ) ( ANSTBL(J,K), K=1,4 )
  200     FORMAT( 1H , 5X,'* OK *',2X,4(E20.7,4X) )
          GO TO 2000

 1000     CONTINUE
          WRITE( 6, 300 ) ( ANSTBL(J,K), K=1, 4 )
  300     FORMAT(1H , 5X,'* NG *', 2X, 4( E20.7, 4X ) )

 2000     CONTINUE

          RETURN
          END
