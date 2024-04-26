      INTEGER*4  I400A(10),I400B(10),I400X(10),I400Y(10)
      DATA       I400A/10*0/
      DATA       I400B/10*1/
      DATA       I400X/1,1,0,0,1,0,1,0,0,1/
      DATA       I400Y/1,2,2,2,0,2,2,0,2,2/
C
      N=9
      DO 10 I=1,N
        IF(I400X(I).EQ.1) THEN
          IF(I400Y(I).EQ.2) THEN
            I400A(3)=I
            I400B(I)=I400A(5)
          ENDIF
        ENDIF
   10 CONTINUE
      WRITE(6,*) I400A
      WRITE(6,*) I400B
      STOP
      END
