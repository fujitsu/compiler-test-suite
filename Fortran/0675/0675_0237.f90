        REAL*8 A2(10),B2(10)/10*2.0/
        INTEGER*4 M(10)
        DATA M/1,2,3,4,5,6,7,8,9,10/
        DO 30 I=1,10
          A2(I)=DLOG(B2(I))
          M(I)=M(I)+I
30      CONTINUE
          WRITE(6,*) A2,M
          STOP
          END
