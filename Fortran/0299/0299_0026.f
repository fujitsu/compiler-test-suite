      IMPLICIT REAL*8 (A-H,O-Z)
      PARAMETER(NPLY=100)
      COMMON /FCPHSR/ RHOF,ARHO(NPLY)

      call FAMTL2(ARHO,NPLY)
      write(6,*) ARHO
      end

      SUBROUTINE FAMTL2(AFUNC,NFUNC)
      IMPLICIT REAL*8 (A-H,O-Z)
      DIMENSION    AFUNC(NFUNC)

      write(6,*) '#### start ######',NFUNC
      CALL FSETR(AFUNC,NFUNC,2.0D0)
      write(6,*) '#### end #####'

      RETURN
      END

      SUBROUTINE FSETR(AAA,NDIM,VALUE)
      IMPLICIT REAL*8 (A-H,O-Z)
      DIMENSION AAA(NDIM)

      DO 100 I=1,NDIM
      AAA(I)=VALUE+I
  100 CONTINUE

      RETURN
      END
