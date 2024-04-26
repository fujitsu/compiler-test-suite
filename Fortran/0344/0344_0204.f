      CALL SUB01(10)
      CALL SUB02(5)
      STOP
      END
C
      SUBROUTINE SUB01(N)
      REAL    R401(10)/8,7,6,5,4,3,2,1,0,-1/
      INTEGER I401(10)/1,2,3,4,5,6,7,8,9,10/
C
      DO 10 I=1,N
        I401(I) = I401(I) ** INT(R401(I))
   10 CONTINUE
      WRITE(6,1) I401
 1    format(10i7)
      RETURN
      END
C
      SUBROUTINE SUB02(N)
      REAL    R401(10)/8,7,6,5,4,3,2,1,0,-1/
      INTEGER I401(10)/1,2,3,4,5,6,7,8,9,10/
      DO 10 I=1,N
        R401(I) = SIN(REAL(I401(I)))
   10 CONTINUE
      WRITE(6,1) R401
 1    format(5e14.6)
      RETURN
      END
