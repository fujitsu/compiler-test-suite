      LOGICAL*4 I1(10),I2,I3(10)
      DATA I2/.TRUE./,I3/5*.TRUE.,5*.FALSE./,N/10/

      DO 10 I=1,N
10        I1(I)=I2.AND.I3(I)
      WRITE(6,*)I1,I2,I3
      END
