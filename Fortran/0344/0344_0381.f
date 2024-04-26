      PROGRAM MAIN
      REAL   *4 R4A(10),R4B(10),R4C(10),R4S
      REAL   *8 R8A(10),R8B(10),R8C(10),R8S
      DATA      N/10/
C
         I4S   = 1
         R4S   = 1.0
         R8S   = 1.0
      DO 100 I = 1 , N
         R4A(I)= I
         R4B(I)= I
         R4C(I)= I
         R8A(I)= I
         R8B(I)= I
         R8C(I)= I
  100 CONTINUE
C
      DO 300 I = 2 , N
         R4S   = R4S      * R8B(I) + R8C(I)
         R8S   = R8S      * R4B(I) + R4C(I)
  300 CONTINUE
C
  998 FORMAT(1H ,4(/3F18.8))
  999 FORMAT(1H ,5(/2F20.10))
      WRITE(6,*  ) ' ### R4S ### '
      WRITE(6,998) R4S
      WRITE(6,*  ) ' ### R8S ### '
      WRITE(6,999) R8S
      STOP
      END
