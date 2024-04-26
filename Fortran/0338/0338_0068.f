      PROGRAM MAIN
      INTEGER*2 I2
      INTEGER*4 I4
      REAL*4 R4
      REAL*8 R8
      WRITE(6,*)'#### START ####'
      I2=-10
      IF(I2)10,99,99
   10 I4=0
      IF(I4)99,20,99
   20 R4=10.0
      IF(R4)99,99,30
   30 R8=-0.1
      IF(R8)40,99,99
   99 WRITE(6,*)'??? NG ???'
      GO TO 50
   40 WRITE(6,*)'*** OK ***'
   50 WRITE(6,*)'####  END  ####'
      END
