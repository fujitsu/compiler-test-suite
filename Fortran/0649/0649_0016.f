      INTEGER*4    IA4(5,5)
      DATA  (IA4(I,I),I=1,5,1)/11,22,33,44,55/
      WRITE(6,100)
      WRITE(6,101) (IA4(1,I),I=1,5)
      WRITE(6,101) (IA4(1,I),I=1,5,1)
      WRITE(6,101) (IA4(2,I),I=1,5,1)
      WRITE(6,101) (IA4(3,I),I=1,5,1)
      WRITE(6,101) (IA4(4,I),I=1,5,1)
      WRITE(6,101) (IA4(5,I),I=1,5,1)
  100 FORMAT(1H ,'IA4(X,X) X=1,5,1 INPUT 11,22,33,44,55')
  101 FORMAT(1H ,5I3)
      END
