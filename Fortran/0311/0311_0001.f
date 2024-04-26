      PROGRAM MAIN
      REAL    A(10),B(10),C(10),C1(10)

      DATA X,B,A/11*1.0,10*0.0/
      DATA I/9.0/
      DATA C1/9*1.0,0.0/

      A(1:I:1)=B(1:I:1)
      I=X+I
      C(1:I:1)=A(1:I:1)

      DO 10 II=1,10
        IF (C(II) .NE. C1(II)) THEN
          WRITE (6,*) 'NG'
          WRITE (6,*) 'C (',C,')'
          GOTO 20
        END IF
  10  CONTINUE
      WRITE(6,*) 'OK'
  20  CONTINUE
      STOP
      END
