      REAL X(2200),XMAX
      DATA X/2200*3.14/,XMAX/0/,INCX/1/,ISAMAX/1300/
      X(2151)=-4.5
      CALL  SUB(X,XMAX,2200,INCX,ISAMAX)
      WRITE(6,*) XMAX,ISAMAX
      INCX=1
      CALL  SUB(X,XMAX,1100,INCX,ISAMAX)
      WRITE(6,*) XMAX,ISAMAX
      STOP
      END
      SUBROUTINE SUB(X,XMAX,N,INCX,ISAMAX)

      REAL X(N), XMAX
      ISAMAX = 1
      IF ( N .LE. 1 ) GO TO 20
         XMAX = ABS( X(1) )
         IX = MIN(N,INCX + 1)
         DO 10 I= 2,N
             IF ( ABS( X(IX) ) .LE. XMAX ) GO TO 10
                ISAMAX = I
                XMAX = ABS ( X(IX) )
 10          IX = IX + INCX
 20   CONTINUE
      RETURN
      END
