      CHARACTER*30 C(3 )
      NAMELIST /NAM/ I,J,K
      I=1
      J=2
      K=3
      WRITE(C,NAM)
      print *,'pass'
      END
