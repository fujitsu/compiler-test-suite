      PROGRAM MAIN
      INTEGER INT1,INT2(5)
      REAL FLOAT
      COMPLEX COMP
      LOGICAL BOOL1,BOOL2
      CHARACTER   HEX
      CHARACTER*7 CHR
      NAMELIST /NAM1/INT1,INT2,FLOAT,HEX
      NAMELIST /NAM2/COMP,BOOL1,BOOL2,CHR
      WRITE(6,*)'#### START ####'
      READ(5,NAM1)
      READ(5,NAM2)
      WRITE(6,NAM1)
      WRITE(6,NAM2)
      WRITE(6,*)'####  END  ####'
      END