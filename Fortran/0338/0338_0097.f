      PROGRAM MAIN
      INTEGER*2 A
      INTEGER*4 B
      REAL*4 C
      REAL*8 D
      COMPLEX*8 E
      COMPLEX*16 F
      LOGICAL FLAG
      WRITE(6,*)'#### START ####'
      A=10
      B=A+90.5
      C=B+10.25+(100.0,100.0)
      D=C+(89.75,0)+B
      E=(D+(100,0))/5*(10.0,0)
      F=E+(0,99.25)+(0,0.75)-999.5
      B=F
      C=F
      FLAG=(F.EQ.(0.5,100.0)).AND.(B.EQ.0).AND.(C.EQ.0.5)
      IF(FLAG) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???',F
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
