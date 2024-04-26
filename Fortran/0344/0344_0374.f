      PROGRAM MAIN
      INTEGER*4 I4A1(10),I4C(10),I4B,I4S1,I4S2,I4S3
      INTEGER*4 I4A2(10)
      INTEGER*4 I4A3(10)
      REAL   *4 R4A1(10),R4C(10),R4B,R4S1,R4S2,R4S3
      REAL   *4 R4A2(10)
      REAL   *4 R4A3(10)
      REAL   *8 R8A1(10),R8C(10),R8B,R8S1,R8S2,R8S3
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
         I4B   = 3
         R4B   = 3.0
         R8B   = 3.0
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
         I4C (I)= I
         R4C (I)= I
         R8C (I)= I
  100 CONTINUE
C
      DO 200 I = 2 , N
         I4A1(I)= I4A1(I-1) * I4B + I4C(I)
         R4A1(I)= R4A1(I-1) * R4B + R4C(I)
         R8A1(I)= R8A1(I-1) * R8B + R8C(I)
         I4A2(I)= I4A2(I-1) * I   + I4C(I)
         R4A2(I)= R4A2(I-1) * I   + R4C(I)
         R8A2(I)= R8A2(I-1) * I   + R8C(I)
         I4A3(I)= I4A3(I-1) * I4C(2) + I4C(I)
         R4A3(I)= R4A3(I-1) * R4C(2) + R4C(I)
         R8A3(I)= R8A3(I-1) * R8C(2) + R8C(I)
  200 CONTINUE
C
      DO 300 I = 1 , N
         I4S1  = I4S1     * I4B    + I4C(I)
         R4S1  = R4S1     * R4B    + R4C(I)
         R8S1  = R8S1     * R8B    + R8C(I)
         I4S2  = I4S2     * I      + I4C(I)
         R4S2  = R4S2     * I      + R4C(I)
         R8S2  = R8S2     * I      + R8C(I)
         I4S3  = I4S3     * I4C(2) + I4C(I)
         R4S3  = R4S3     * R4C(2) + R4C(I)
         R8S3  = R8S3     * R8C(2) + R8C(I)
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
