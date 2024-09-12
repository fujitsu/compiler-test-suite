      COMMON A(20,20,5),B(20,20,5)
      INTEGER*4 A,B,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10
      DATA B/2000*1/,N/10/,J/1/,K/1/,L/1/

      I1 = 1
      I2 = 1
      I3 = 1
      I4 = 1
      I5 = 1
      I6 = 1
      I7 = 1
      I8 = 1
      I9 = 1
      I10= 1
      DO 10 I=1,N
10        A(I,J,K)=I10*B(I,J,L)
      I1 =I1 +I10
      I2 =I2 +I10
      I3 =I3 +I10
      I4 =I4 +I10
      I5 =I5 +I10
      I6 =I6 +I10
      I7 =I7 +I10
      I8 =I8 +I10
      I9 =I9 +I10
      WRITE(6,*)I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,A(10,1,1)
      END
