         REAL*4 R1A(100),R1B(100)
         REAL*8 R2A(100),R2B(100)
         INTEGER*4 R3A(100),R3B(100)

         DO 1 I=1,100
           R1A(I)=0.5
           R2A(I)=0.5
           R1B(I)=0.5
           R2B(I)=0.5
           R3B(I)=5
1          R3A(I)=5


           DO 10 I=1,100
             R1A(I)=R1A(I)+2.0
10         CONTINUE


           DO 20 I=1,100
             IF(R1A(1).GT.5.0) THEN
               R2B(I)=R2B(I)+2.0
             ELSE IF(R1A(1).LE.5.0) THEN
               R2B(I)=R2A(100)
             ENDIF
20         CONTINUE


           DO 30 I=1,100
             R3B(I)=I
             R3B(I)=I
             IF(I.GT.50) THEN
               R3B(I)=I+1
               R3B(I)=I+2
             ENDIF
30         CONTINUE


           DO 40 I=50,100
             R2B(I)=I
             R2B(I)=R2B(I)
             IF(I.GT.50) THEN
             R2B(I)=I+2.0
             R2B(I)=R2B(I)
             ENDIF
40         CONTINUE


           DO 50  I=25,50
             R1B(I)=R1A(I)+2.0
             R1A(I)=R1B(100)+R1B(20)
             IF(I.GT.50) THEN
             R1B(I)=R1A(I)+2.0
             R1A(I)=R1B(100)+R1B(20)
             ENDIF
50         CONTINUE
           R3A(1)=1
           R3A(2)=2


           DO 200 I=15,5,-1
               R2B(I)=R2A(50)+R2A(I)
               R2B(I+10)=R2A(15)+R2A(I)
             IF(I.GT.10) THEN
               R2B(I)=R2A(50)+R2A(I)
               R2B(I+10)=R2A(15)+R2A(I)
             ENDIF
200         CONTINUE
         WRITE(6,*) R1A,R1B
         WRITE(6,*) R2A,R2B
         WRITE(6,*) R3A,R3B
         STOP
         END
