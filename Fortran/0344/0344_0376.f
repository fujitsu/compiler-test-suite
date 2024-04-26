      PROGRAM MAIN
      INTEGER*4 I4A(10),I4B(10),I4C(10),I4S
      REAL   *4 R4A(10),R4B(10),R4C(10),R4S
      REAL   *8 R8A(10),R8B(10),R8C(10),R8S
      DATA      N/10/
C
         I4S   = 1
         R4S   = 1.0
         R8S   = 1.0
      DO 100 I = 1 , N
         I4A(I)= I
         I4B(I)= I
         I4C(I)= I
         R4A(I)= I
         R4B(I)= I
         R4C(I)= I
         R8A(I)= I
         R8B(I)= I
         R8C(I)= I
  100 CONTINUE
C
      DO 210 I = 2 , N
         I4A(I)= I4A(I-1) / I4B(I) + I4C(I)
  210 CONTINUE
      DO 220 I = 2 , N
         R4A(I)= R4A(I-1) / R4B(I) + R4C(I)
         R8A(I)= R8A(I-1) / R8B(I) + R8C(I)
  220 CONTINUE
C
      DO 310 I = 1 , N
         I4S   = I4S      / I4B(I) + I4C(I)
  310 CONTINUE
      DO 320 I = 1 , N
         R4S   = R4S      / R4B(I) + R4C(I)
         R8S   = R8S      / R8B(I) + R8C(I)
  320 CONTINUE
C
      WRITE(6,*  ) ' ### I4A ### '
      WRITE(6,997) I4A
      WRITE(6,*  ) ' ### R4A ### '
      WRITE(6,998) R4A
      WRITE(6,*  ) ' ### R8A ### '
      WRITE(6,999) R8A
  997 FORMAT(1H ,2(/5I10))
  998 FORMAT(1H ,4(/3F18.8))
  999 FORMAT(1H ,5(/2F20.10))
      WRITE(6,*  ) ' ### I4S ### '
      WRITE(6,997) I4S
      WRITE(6,*  ) ' ### R4S ### '
      WRITE(6,998) R4S
      WRITE(6,*  ) ' ### R8S ### '
      WRITE(6,999) R8S
      STOP
      END
