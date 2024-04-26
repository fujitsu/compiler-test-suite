      PROGRAM MAIN
      INTEGER*4 I4A(1111),I4B(1111),I4C(1111),I4S
      REAL   *4 R4A(1111),R4B(1111),R4C(1111),R4S
      REAL   *8 R8A(1111),R8B(1111),R8C(1111),R8S
      COMMON    /I4/I4A,I4B,I4C,I4S
      COMMON    /R4/R4A,R4B,R4C,R4S
      COMMON    /R8/R8A,R8B,R8C,R8S
      DATA      N/1111/
C
         I4S   = 1
         R4S   = 1.0
         R8S   = 1.0
         CALL    INIT
C
      DO 200 I = 2 , 1111
         I4A(I)= I4A(I-1) * I4B(I) + I4C(I)
         R4A(I)= R4A(I-1) * R4B(I) + R4C(I)
         R8A(I)= R8A(I-1) * R8B(I) + R8C(I)
  200 CONTINUE
C
      DO 300 I = 2 , N
         I4S   = I4S      * I4B(I) + I4C(I)
         R4S   = R4S      * R4B(I) + R4C(I)
         R8S   = R8S      * R8B(I) + R8C(I)
  300 CONTINUE
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
C
C
      SUBROUTINE INIT
      COMMON    /I4/I4A,I4B,I4C,I4S
      COMMON    /R4/R4A,R4B,R4C,R4S
      COMMON    /R8/R8A,R8B,R8C,R8S
      INTEGER*4 I4A(1111),I4B(1111),I4C(1111),I4S
      REAL   *4 R4A(1111),R4B(1111),R4C(1111),R4S
      REAL   *8 R8A(1111),R8B(1111),R8C(1111),R8S
C
      DO 1000 I = 1 , 1111
          I4A(I)= 1
          I4B(I)= 1
          I4C(I)= 1
          R4A(I)= 1
          R4B(I)= 1
          R4C(I)= 1
          R8A(I)= 1
          R8B(I)= 1
          R8C(I)= 1
 1000 CONTINUE
      RETURN
      END
