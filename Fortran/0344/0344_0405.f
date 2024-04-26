      REAL*4    R400A(10),R400B(10),XX(10)
      DATA      R400A/10*1/
      DATA      R400B/3,3,5,2,3,5,2,5,6,7/
      DATA      XX/10*1/
      N=9
      DO 10 I=1,N
        IF(XX(I).EQ.1) THEN
          R400A(N)=R400B(I)
          R400A(N-1)=R400B(I)+I
        ENDIF
   10 CONTINUE
      WRITE(6,*) R400A
      STOP
      END
