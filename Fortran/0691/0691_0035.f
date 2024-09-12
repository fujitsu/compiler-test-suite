      DIMENSION     IA(10),RA(10)
      COMMON        /BLK1/IA /BLK2/RA
      EXTERNAL      FUNC
      CALL SUB(R1)
      WRITE (6,100)
      WRITE (6,110)
      WRITE (6,120)
      STOP
  100 FORMAT (1H1 / 7X,24H*FORTRAN*          ENTER )
  110 FORMAT (1H0 // 31X,34HWOULD YOU CHECK EACH ELEMENT NAME. //
     *    30X, 9HSEE UNDER //36X,10H* NOGOOD *,10X,8H* GOOD *
     *    // 38X,25HFTMAIN   ------+   ELEM00 // 38X,25HSUB      ------+
     *   ELEM01 // 38X,25HFUNC     ------+   ELEM02 // 38X,25HBLKDAT   -
     *-----+   ELEM03   )
  120 FORMAT (1H0 // 7X,23H*FORTRAN*          EXIT )
      END
      SUBROUTINE    SUB(R1)
      COMMON        /BLK1/IA(10) /BLK2/RA(10)
      RA(10)=FUNC(IA(10))
      RETURN
      END
      REAL FUNCTION FUNC(I1)
      FUNC =I1**2
      RETURN
      END
      BLOCK DATA
      DIMENSION     IA(10),RA(10)
      COMMON        /BLK1/IA /BLK2/RA
      DATA          IA/1,2,3,4,5,6,7,8,9,10/,
     *              RA/1.1,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,10.0/
      END
