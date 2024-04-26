      IMPLICIT DOUBLE PRECISION(A-H,O-Z)
      DIMENSION D2(100)
      d2 = 0
      call SUB(D2,K2,100)
      write(6,*) d2
      end

      SUBROUTINE SUB(D2,K2,K4)
      IMPLICIT DOUBLE PRECISION(A-H,O-Z)
      DIMENSION D2(K4)
C
      DO I1=0,0
      DO 370 LL=1,100
         K2 = LL
         J1 = I1*1 + K2
         D2(J1) = J1
 370    CONTINUE
      ENDDO
      RETURN
      END
