       PROGRAM MAIN
       INTEGER * 4 I4S    ,I4B(11)
       REAL    * 4 R4S    ,R4B(11)
       REAL    * 8 R8S    ,R8B(11)
       DATA I4B/1,2,1,2,1,2,1,2,1,2,1/
       DATA R4B/1.,2.,1.,2.,1.,2.,1.,2.,1.,2.,1./
       DATA R8B/1.,2.,1.,2.,1.,2.,1.,2.,1.,2.,1./
       DATA N/10/

       I4S = 500
       R4S = 500.
       R8S = 500.

      DO 1 I=1,N
        I4S = I4S / I4B(I)
 1    CONTINUE
      WRITE(6,*) '### TEST 1 ###'
      WRITE(6,*) '### SIMPLE ###',I4S

      DO 2 I=1,N
        R4S = R4S / R4B(I)
 2    CONTINUE
      WRITE(6,*) '### TEST 2 ###'
      WRITE(6,*) '### SIMPLE ###',R4S

      DO 3 I=1,N
        R8S = R8S / R8B(I)
 3    CONTINUE
      WRITE(6,*) '### TEST 3 ###'
      WRITE(6,*) '### SIMPLE ###',R8S

      STOP
      END
