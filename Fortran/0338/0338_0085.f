      PROGRAM MAIN
      REAL A,B,C,D,E
      INTEGER F,J
      COMPLEX G,H
      LOGICAL I
      CHARACTER*7 CHR
      WRITE(6,*)'#### START ####'
      B=0
      C=0
      G=(0,0)
      J=0
      READ(5,*) A,B,C,D,E,F,CHR,G,H,I,J
      WRITE(6,*) A,B,C,D,E,F,CHR,G,H,I,J
      WRITE(6,*)'####  END  ####'
      END
