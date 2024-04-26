      PROGRAM MAIN
      INTEGER*4 CODE/0/

      CALL SUB1(CODE)
      CALL SUB2(CODE)

      IF(CODE .EQ. 0) THEN
         WRITE(6,*) 'OK'
      ELSE
         WRITE(6,*) 'NG'
      ENDIF 
      STOP
      END

      SUBROUTINE SUB1(CODE)
      INTEGER*4 CODE
      REAL      A(10),B(10)
      DATA B/1.0,2.0,3.0,4.0,5.0,4.0,3.0,2.0,1.0,0.0/
      DATA I,J/2*1.0/

      A=B
      A(I:J)=B(I:J)

      DO 10 II=1,10
        IF (A(II) .NE. B(II)) THEN

          WRITE (6,*) 'A( ',A,')'
          CODE=CODE+1
          GOTO 20
        END IF
  10  CONTINUE

  20  CONTINUE
C
      END SUBROUTINE SUB1
C
      SUBROUTINE SUB2(CODE)
      INTEGER*4 CODE
      REAL      A(10),B(10),C(10),C1(10)

      DATA X,B,A/11*1.0,10*0.0/
      DATA I/9.0/
      DATA C1/9*1.0,0.0/

      A(1:I:1)=B(1:I:1)
      I=X+I
      C(1:I:1)=A(1:I:1)

      DO 10 II=1,10
        IF (C(II) .NE. C1(II)) THEN
          WRITE (6,*) 'C (',C,')'
          CODE=CODE+1
          GOTO 20
        END IF
  10  CONTINUE
  20  CONTINUE
C
      END SUBROUTINE SUB2
