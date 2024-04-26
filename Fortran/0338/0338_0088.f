      PROGRAM MAIN
      INTEGER*2 A
      INTEGER*4 B
      REAL*4 C
      REAL*8 D
      COMPLEX*8 E
      COMPLEX*16 F
      LOGICAL*1 G
      LOGICAL*4 H
      CHARACTER I
      CHARACTER*7 J
      WRITE(6,*)'#### START ####'
      A=100
      B=100
      C=100.5
      D=100.5
      E=(100.5,100.5)
      F=(100.5,100.5)
      G=.FALSE.
      H=.TRUE.
      I='A'
      J='FORTRAN'
      WRITE(6,*)'INTEGER*2 ==> ',A
      WRITE(6,*)'INTEGER*4 ==> ',B
      WRITE(6,*)'REAL*4 =====> ',C
      WRITE(6,*)'REAL*8 =====> ',D
      WRITE(6,*)'COMPLEX*8 ==> ',E
      WRITE(6,*)'COMPLEX*16 => ',F
      WRITE(6,*)'LOGICAL*1 ==> ',G
      WRITE(6,*)'LOGICAL*4 ==> ',H
      WRITE(6,*)'CHARACTER ==> ',I
      WRITE(6,*)'CHARACTER*7 > ',J
      WRITE(6,*)'####  END  ####'
      END
