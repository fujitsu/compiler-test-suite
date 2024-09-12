      REAL*4  R1(10),R2(10),R3(10),A(10)
      DATA    R1,R2,R3,A/10*1.2,10*3.2,10*4.2,10*3.3/

      DO 10 I=1,10
        A(I) = SIN(A(I))
        DO 10 J=1,10
          R1(J) = R2(J) + R3(J)
   10 CONTINUE
      WRITE(6,111) R1

      DO 20 I=1,10
        WRITE(6,111)  A(I)
        DO 20 J=1,10
          R2(J) = R1(J) * 2.0
   20 CONTINUE
 111  FORMAT(1H ,4(E12.5,3X) )
      WRITE(6,111) R2

      DO 30 I=1,10
        CALL  SUB
        DO 30 J=1,10
          R3(J) = R1(J) - R2(J)
   30 CONTINUE
      WRITE(6,111) R3

      DO 50 I=1,10
        DO 40 II=2,9
          A(II) = A(I) + A(II-1) * A(II+1)
   40  CONTINUE

        DO 50 J=1,10
         R1(J) = R1(J) / 3.0
   50 CONTINUE

      WRITE(6,111) A,R1

      DO 60 I=1,10
        DO 60 J=I,10
          R1(J) = R2(J) + 2.0
   60 CONTINUE
      WRITE(6,111) R1
      STOP
      END
      SUBROUTINE  SUB
      RETURN
      END
