          INTEGER*4 I1(10),I2(10)/10*0/
          INTEGER*4 I10(10),I11(10),I12(10)/10*1/,I13(10)/10*2/
          EQUIVALENCE (I,I1(1))
          DO 10 I=1,10
   10       I1(I)=1
          DO 20 I=2,10,2
           I1(I1(1)) = 2
   20      I2(I) = 2
          DO 30 J=1,2
          DO 30 I=1,10
            I10(I)=I12(I)**I13(I)
   30       I11(I)=0
          DO 40 J=1,5
           I1(J) = J
          DO 40 I=1,10,5
           I11(I)=1
           I12(I)=I12(I)**I13(I)
 40     CONTINUE
       WRITE(6,*) I1,I2,I10,I12,I11
       STOP
       END
