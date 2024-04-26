      PROGRAM MAIN
      INTEGER*2  I2
      INTEGER*4  I4
      REAL*4     R4
      REAL*8     R8
      COMPLEX*8  C8
      COMPLEX*16 C16
      WRITE(6,*)'#### START ####'
      CALL SUB(I2,I4,R4,R8,C8,C16)
      C16=C16+I2
      C16=C16+I4
      C16=C16+R4
      C16=C16+R8
      C16=C16+C8
      IF(C16.EQ.(500.875,10.5)) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB(I2,I4,R4,R8,C8,C16)
      INTEGER*2  I2
      INTEGER*4  I4
      REAL*4     R4
      REAL*8     R8
      COMPLEX*8  C8
      COMPLEX*16 C16
      I2=100
      I4=100
      R4=100.125
      R8=100.5
      C8=(100.25,10.5)
      C16=(0,0)
      END
