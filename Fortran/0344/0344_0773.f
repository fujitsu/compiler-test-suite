      REAL*4    R4A(100),R4B(100),R4C(100),S,T
      DATA      R4A/100*0/,
     #          R4B/100*.5/,
     #          R4C/100*2/,S/1/,T/0/
C
      DO 100 I = 2,100
        S      = S * R4B(I) * R4C(I)
        T      = S
        R4A(I) = R4A(I-1) * T + R4B(I)
  100 CONTINUE
C
      WRITE(6,999) R4A(100),S,T
  999 FORMAT(1H ,'RESULT = ',3F18.9)
      STOP
      END
