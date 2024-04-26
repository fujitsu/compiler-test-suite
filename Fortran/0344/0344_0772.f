      REAL*4    R4A(10,10),R4B(10,10),R4C(10,10)
      DATA      R4A/100*0/,
     #          R4B/100*1/,
     #          R4C/100*3/
C
      CALL VREC(R4A,R4B,R4C,2,10)
C
      WRITE(6,999) R4A(10,1)
  999 FORMAT(1H ,'RESULT = ',F20.10)
      STOP
      END
C
      SUBROUTINE VREC(R4A,R4B,R4C,M,N)
      REAL R4A(N,N),R4B(N,N),R4C(N,N)
C
      DO 100 I = M,N
        R4A(I,1) = R4A(I-1,1) * R4B(I,1) + R4C(I,1)
  100 CONTINUE
      RETURN
      END
