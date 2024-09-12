       PROGRAM MAIN
       INTEGER * 4 I4S
       REAL    * 4 R4S
       REAL    * 8 R8S
       DATA N/5/
       DATA I4S/1/
       DATA R4S/1/
       DATA R8S/1/

      DO 1 I=1,N
        I4S = I4S * I4S+I4S
 1    CONTINUE
      WRITE(6,*) '### TEST 1 ###'
      WRITE(6,*) '### SIMPLE ###',I4S

      DO 2 I=1,N
        R4S = R4S * R4S+R4S
 2    CONTINUE
      WRITE(6,*) '### TEST 2 ###'
      WRITE(6,*) '### SIMPLE ###',R4S

      DO 3 I=1,N
        R8S = R8S *R8S+R8S
 3    CONTINUE
      WRITE(6,*) '### TEST 3 ###'
      WRITE(6,*) '### SIMPLE ###',R8S

      STOP
      END
