      SUBROUTINE INITAL
      IMPLICIT REAL*8 (A-H,O-Z)
      INTEGER*8 NGB,IN,NP
      PARAMETER(NGB=128)
      PARAMETER(IN=25000*NGB)
      COMMON /PARTCL/  XE(IN)

      NP = IN
      DO 50 J=1,NP
         XE(J)=UNRNDM(1.0_8)
 50      CONTINUE
      END

      call inital
      write(6,*) " ## OK ## "
      end

      real*8 function UNRNDM(rr)
      real*8 rr
      UNRNDM = rr
      return
      end
