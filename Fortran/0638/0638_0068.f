         INTEGER*4 R1A(100),R1B(100),R1C(100),R1D(100)
         INTEGER*4 R2A(100),R2B(100),R2C(100),R2D(100)
         INTEGER*4 R3A(100),R3B(100),R3C(100),R3D(100)
         INTEGER*4 R4A(100),R4B(100),R4C(100),R4D(100)

         DO 10 I=1,100,2
           R1A(I)=1
           R1B(I)=2
           R1C(I)=3
           R1D(I)=4
           R2A(I)=5
           R2B(I)=6
           R2C(I)=7
           R2D(I)=8
           R3A(I)=9
           R3B(I)=10
           R3C(I)=11
           R3D(I)=12
           R4A(I)=13
           R4B(I)=14
           R4C(I)=15
           R4D(I)=16
           IF(I.LE.99) THEN
           R1A(I+1)=1      + R1A(I)  +   16
           R1B(I+1)=2      + R1B(I)  +   15
           R1C(I+1)=3      + R1C(I)  +   14
           R1D(I+1)=4      + R1D(I)  +   13
           R2A(I+1)=5      + R2A(I)  +   12
           R2B(I+1)=6      + R2B(I)  +   11
           R2C(I+1)=7      + R2C(I)  +   10
           R2D(I+1)=8      + R2D(I)  +    9
           R3A(I+1)=9      + R3A(I)  +    8
           R3B(I+1)=10     + R3B(I)  +    7
           R3C(I+1)=11     + R3C(I)  +    6
           R3D(I+1)=12     + R3D(I)  +    5
           R4A(I+1)=13     + R4A(I)  +    4
           R4B(I+1)=14     + R4B(I)  +    3
           R4C(I+1)=15     + R4C(I)  +    2
           R4D(I+1)=16     + R4D(I)  +    1
           ENDIF
10         CONTINUE

           DO 20 I=1,10
             R1A(I)=R1A(10)+R1B(10)+R1C(10)+R1D(10)
             R1B(I)=R1A(I)+R1B(I)
             R1C(I)=R1B(I)+R1C(I)
             R1D(I)=R1C(I)+R1D(I)
20           CONTINUE
           DO 30 I=10,30
             IF(I.GT.20) THEN
               R1A(I)=R1A(30)+R1B(30)+R1C(30)+R1D(30)
               R1B(I)=R1A(I)+R1B(I)
               R1C(I)=R1B(I)+R1C(I)
               R1D(I)=R1C(I)+R1D(I)
             ENDIF
30           CONTINUE
           DO 40 I=10,30
             IF(R2B(1).GT.0) THEN
               R1A(I)=R1A(30)+R1B(30)+R1C(30)+R1D(30)
               R1B(I)=R1A(I)+R1B(I)+R1B(30)
               R1C(I)=R1B(I)+R1C(I)+R1C(30)
               R1D(I)=R1C(I)+R1D(I)+R1D(30)
             ENDIF
40           CONTINUE
           DO 50 I=10,30
             IF(I.GT.20) THEN
               R2A(I)=R2A(30)+R2B(30)+R2C(30)+R2D(30)
               R2B(I)=R2A(I)+R2B(I)
               R2C(I)=R2B(I)+R2C(I)
               R2D(I)=R2C(I)+R2D(I)
             ELSE
               R3A(I)=R3A(30)+R3B(30)+R3C(30)+R3D(30)
               R3B(I)=R3A(I)+R3B(I)
               R3C(I)=R3B(I)+R3C(I)
               R3D(I)=R3C(I)+R3D(I)+R3D(30)
             ENDIF
50           CONTINUE
           DO 60 I=10,30,2
             IF(R1A(100).LT.1000000) THEN
               R4A(I)=R4A(30)+R4B(30)+R4C(30)+R4D(30)
               R4B(I)=R4A(I)+R4B(I)
               R4C(I)=R4B(I)+R4C(I)
               R4D(I)=R4C(I)+R4D(I)
             ELSE
               R4A(I)=R4A(30)+R4B(30)+R4C(30)+R4D(30)
               R4B(I)=R4A(I)+R4B(I)
               R4C(I)=R4B(I)+R4C(I)
               R4D(I)=R4C(I)+R4D(I)+R4D(30)
             ENDIF
60           CONTINUE
         WRITE(6,*) R1A,R1B,R1C,R1D
         WRITE(6,*) R2A,R2B,R2C,R2D
         WRITE(6,*) R3A,R3B,R3C,R3D
         WRITE(6,*) R4A,R4B,R4C,R4D
         STOP
         END
