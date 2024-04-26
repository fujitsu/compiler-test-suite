      PROGRAM MAIN
      REAL   A(10),B(10)

      DATA B/1.0,2.0,3.0,4.0,5.0,4.0,3.0,2.0,1.0,0.0/
      DATA I,J/2*1.0/

      A=B
      A(I:J)=B(I:J)

      DO 10 II=1,10
        IF (A(II) .NE. B(II)) THEN
          WRITE (6,*) 'NG'
          WRITE (6,*) 'A( ',A,')'
          GOTO 20
        END IF
  10  CONTINUE
      WRITE (6,*) 'OK'
  20  CONTINUE
      STOP
      END
