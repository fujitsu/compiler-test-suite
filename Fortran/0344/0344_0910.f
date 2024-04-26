      INTEGER*4 A(10)/1,2,3,4,5,6,7,8,9,0/
      INTEGER*4 AMAX,AMIN
C
      AMAX = 0
      AMIN = 0
      DO 10 I=1,10
        AMAX = MAX(A(I),AMAX)
 10   CONTINUE
      DO 20 I=1,10
        AMIN = MIN(A(I),AMIN)
 20   CONTINUE
      WRITE(6,*) ' MAX = ',AMAX
      WRITE(6,*) ' MIN = ',AMIN
      STOP
      END
