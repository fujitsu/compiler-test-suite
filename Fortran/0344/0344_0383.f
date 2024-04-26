      PROGRAM MAIN
      INTEGER*4 I4A(10),I4B(10),I4C(10),N,IRC
      REAL   *4 R4A(10),R4B(10),R4C(10)
      REAL   *8 R8A(10),R8B(10),R8C(10)
      DATA      N/10/,IRC/1/
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
      DO 200 I = 1 , N
         I4A(IRC)= I4A(IRC) * I4B(I) + I4C(I)
         R4A(IRC)= R4A(IRC) * R4B(I) + R4C(I)
         R8A(IRC)= R8A(IRC) * R8B(I) + R8C(I)
  200 CONTINUE
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
      STOP
      END
