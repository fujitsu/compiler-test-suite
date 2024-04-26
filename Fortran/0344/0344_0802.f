      REAL*4    T,S,R4B(10),R4C(10)
      DATA      R4B/1,2,3,4,5,6,7,8,9,10/
     #          R4C/10*4/
C
      S=10
      T = 1
      DO 100 I = 1,10
        S      = R4B(I) - S
        R4C(I) = S
        T      = T + R4B(I)
  100 CONTINUE
C
      WRITE(6,998) S
  998 FORMAT(1H ,'RESULT = ',2F20.10)
      WRITE(6,999) R4C
  999 FORMAT(1H ,'RESULT = ',3F20.10,3(/10X,3F20.10))
      STOP
      END
