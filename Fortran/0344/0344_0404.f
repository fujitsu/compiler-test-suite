      REAL*4    R400A(10),R400B(10),XX(10),R400C(10)
      DATA      R400A/10*7/
      DATA      R400B/2,3,5,2,3,5,2,5,6,7/
      DATA      R400C/0,9,9,9,9,0,0,0,9,9/
      DATA      XX/1,0,0,0,0,0,0,1,1,0/
      DO 10 I=1,9
        IF(XX(I).EQ.1) THEN
          R400B(4)=R400A(I)
        ENDIF
        R400B(10)=R400C(I)
   10 CONTINUE
      WRITE(6,*) R400B
      STOP
      END
