      IMPLICIT REAL*8 (A-H,O-Z)
      DIMENSION   QBE(10)
      N50 = 10
      QBE = 0
      call  SUB (QBE,N50)
      write(6,*) QBE
      end

      SUBROUTINE SUB (QBE,N50)
      IMPLICIT REAL*8 (A-H,O-Z)
      DIMENSION   QBE(N50)

      DO  13650  II = 1, N50
        IF(II.LE.7)  THEN
           ARG=II
           IF (II.GE.2) then
              QBE( II )=dexp(2.5*ARG)+II
           endif
        endif
13650 CONTINUE
      RETURN
      END
