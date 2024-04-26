      PROGRAM MAIN
      INTEGER*2  I2(6),I2D,I2RE
      INTEGER*4  I4(6),I4D,I4RE
      REAL*4     R4(6),R4D,R4RE
      REAL*8     R8(6),R8D,R8RE
      COMPLEX*8  C8(6),C8D,C8RE
      COMPLEX*16 C16(6),C16D,C16RE
      WRITE(6,*)'#### START ####'
C
      I2D=55
      I4D=65537
      R4D=65537.25
      R8D=65537.125
      C8D=(65537.25,65537.125)
      C16D=(65537.5,65537.75)
C
      I2(1)=I2D
      I2(2)=I4D
      I2(3)=R4D
      I2(4)=R8D
      I2(5)=C8D
      I2(6)=C16D
C
      I2D=10
      I4D=10
      R4D=10.25
      R8D=10.75
      C8D=(10.125,10.875)
      C16D=(10.875,10.125)
C
      I4(1)=I2D
      I4(2)=I4D
      I4(3)=R4D
      I4(4)=R8D
      I4(5)=C8D
      I4(6)=C16D
C
      R4(1)=I2D
      R4(2)=I4D
      R4(3)=R4D
      R4(4)=R8D
      R4(5)=C8D
      R4(6)=C16D
C
      R8(1)=I2D
      R8(2)=I4D
      R8(3)=R4D
      R8(4)=R8D
      R8(5)=C8D
      R8(6)=C16D
C
      C8(1)=I2D
      C8(2)=I4D
      C8(3)=R4D
      C8(4)=R8D
      C8(5)=C8D
      C8(6)=C16D
C
      C16(1)=I2D
      C16(2)=I4D
      C16(3)=R4D
      C16(4)=R8D
      C16(5)=C8D
      C16(6)=C16D
C
      I2RE=I2(1)+I2(2)+I2(3)+I2(4)+I2(5)+I2(6)
      I4RE=I4(1)+I4(2)+I4(3)+I4(4)+I4(5)+I4(6)
      R4RE=R4(1)+R4(2)+R4(3)+R4(4)+R4(5)+R4(6)
      R8RE=R8(1)+R8(2)+R8(3)+R8(4)+R8(5)+R8(6)
      C8RE=C8(1)+C8(2)+C8(3)+C8(4)+C8(5)+C8(6)
      C16RE=C16(1)+C16(2)+C16(3)+C16(4)+C16(5)+C16(6)
      IF(I2RE.EQ.60)THEN
        WRITE(6,*) '*** OK1 ***'
      ELSE
        WRITE(6,*) '??? NG1 ???'
      ENDIF
      IF(I4RE.EQ.60)THEN
        WRITE(6,*) '*** OK2 ***'
      ELSE
        WRITE(6,*) '??? NG2 ???'
      ENDIF
      IF(R4RE.EQ.62.0E0)THEN
        WRITE(6,*) '*** OK3 ***'
      ELSE
        WRITE(6,*) '??? NG3 ???'
      ENDIF
      IF(R8RE.EQ.62.0D0)THEN
        WRITE(6,*) '*** OK4 ***'
      ELSE
        WRITE(6,*) '??? NG4 ???'
      ENDIF
      IF(C8RE.EQ.(62.0E0,21.0E0))THEN
        WRITE(6,*) '*** OK5 ***'
      ELSE
        WRITE(6,*) '??? NG5 ???'
      ENDIF
      IF(C16RE.EQ.(62.0D0,21.0D0))THEN
        WRITE(6,*) '*** OK6 ***'
      ELSE
        WRITE(6,*) '??? NG6 ???'
      ENDIF
      END
