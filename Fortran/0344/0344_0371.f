      PROGRAM MAIN
      INTEGER*4 I4A1(10),I4B(10),I4C,I4S1,I4S2,I4S3
      INTEGER*4 I4A2(10)
      INTEGER*4 I4A3(10)
      REAL   *4 R4A1(10),R4B(10),R4C,R4S1,R4S2,R4S3
      REAL   *4 R4A2(10)
      REAL   *4 R4A3(10)
      REAL   *8 R8A1(10),R8B(10),R8C,R8S1,R8S2,R8S3
      REAL   *8 R8A2(10)
      REAL   *8 R8A3(10)
      DATA      N/10/
C
         I4S1  = 1
         R4S1  = 1.0
         R8S1  = 1.0
         I4S2  = 1
         R4S2  = 1.0
         R8S2  = 1.0
         I4S3  = 1
         R4S3  = 1.0
         R8S3  = 1.0
         I4C   = 3
         R4C   = 3.0
         R8C   = 3.0
      DO 100 I = 1 , N
         I4A1(I)= I
         I4A2(I)= I
         I4A3(I)= I
         R4A1(I)= I
         R4A2(I)= I
         R4A3(I)= I
         R8A1(I)= I
         R8A2(I)= I
         R8A3(I)= I
         I4B (I)= I
         R4B (I)= I
         R8B (I)= I
  100 CONTINUE
C
      DO 200 I = 2 , N
         I4A1(I)= I4A1(I-1) * I4B(I) + I4C
         R4A1(I)= R4A1(I-1) * R4B(I) + R4C
         R8A1(I)= R8A1(I-1) * R8B(I) + R8C
         I4A2(I)= I4A2(I-1) * I4B(I) + I
         R4A2(I)= R4A2(I-1) * R4B(I) + I
         R8A2(I)= R8A2(I-1) * R8B(I) + I
         I4A3(I)= I4A3(I-1) * I4B(I) + I4B(N)
         R4A3(I)= R4A3(I-1) * R4B(I) + R4B(N)
         R8A3(I)= R8A3(I-1) * R8B(I) + R8B(N)
  200 CONTINUE
C
      DO 300 I = 1 , N
         I4S1  = I4S1     * I4B(I) + I4C
         R4S1  = R4S1     * R4B(I) + R4C
         R8S1  = R8S1     * R8B(I) + R8C
         I4S2  = I4S2     * I4B(I) + I
         R4S2  = R4S2     * R4B(I) + I
         R8S2  = R8S2     * R8B(I) + I
         I4S3  = I4S3     * I4B(I) + I4B(N)
         R4S3  = R4S3     * R4B(I) + R4B(N)
         R8S3  = R8S3     * R8B(I) + R8B(N)
  300 CONTINUE
C
      WRITE(6,*  ) ' ### I4A1 ### '
      WRITE(6,997) I4A1
      WRITE(6,*  ) ' ### R4A1 ### '
      WRITE(6,998) R4A1
      WRITE(6,*  ) ' ### R8A1 ### '
      WRITE(6,999) R8A1
      WRITE(6,*  ) ' ### I4A2 ### '
      WRITE(6,997) I4A2
      WRITE(6,*  ) ' ### R4A2 ### '
      WRITE(6,998) R4A2
      WRITE(6,*  ) ' ### R8A2 ### '
      WRITE(6,999) R8A2
      WRITE(6,*  ) ' ### I4A3 ### '
      WRITE(6,997) I4A3
      WRITE(6,*  ) ' ### R4A3 ### '
      WRITE(6,998) R4A3
      WRITE(6,*  ) ' ### R8A3 ### '
      WRITE(6,999) R8A3
  997 FORMAT(1H ,2(/5I10))
  998 FORMAT(1H ,4(/3F18.8))
  999 FORMAT(1H ,5(/2F20.10))
      WRITE(6,*  ) ' ### I4S ### '
      WRITE(6,997) I4S1,I4S2,I4S3
      WRITE(6,*  ) ' ### R4S ### '
      WRITE(6,998) R4S1,R4S2,R4S3
      WRITE(6,*  ) ' ### R8S ### '
      WRITE(6,999) R8S1,R8S2,R8S3
      STOP
      END
