         INTEGER*4 R1A(100),R1B(100),R1C(100),R1D(100)
         INTEGER*4 R4C(100)
         DATA R1A/100*1/,R1B/100*1/,R1C/100*1/,R1D/100*1/
         DATA R4C/100*1/
         INTEGER*4 M/-10/

         WRITE(6,*) R1A(10)
32         DO 41 I=10,30,2
               R1A(I)=R1A(30)+R1D(30)+R1D(30)+R1D(30)
               R1A(I)=R1A(I)+R1B(I)+R1D(30)
               IF(M+10.NE.99) R4C(I)=R4C(I)+R4C(30)
               R1A(I)=R1A(I)+R1C(I)+R1D(30)
41           CONTINUE
         WRITE(6,*) R1A(10)
         WRITE(6,*) ' '
         END
