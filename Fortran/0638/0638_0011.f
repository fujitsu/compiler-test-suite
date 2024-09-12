         REAL*4 R1A(100),R1B(100),R1C(100)
         REAL*8 R2A(100),R2B(100),R2C(100)
         INTEGER*4 R3A(100),R3B(100),R3C(100)
         COMPLEX*8 R4A(100),R4B(100),R4C(100)
         REAL*8 R6A(100)

         DO 1 I=1,100
           R1A(I)=1.0
           R1B(I)=1.0
           R1C(I)=1.0
           R2A(I)=2.0
           R2B(I)=2.0
           R2C(I)=2.0
           R3A(I)=1
           R3B(I)=1
           R3C(I)=1
           R4A(I)=(1.0,1.0)
           R4B(I)=(2.0,2.0)
           R4C(I)=(2.0,2.0)
1          R6A(I)=1.0


           DO 300 IIII = 1,2
           DO 999 III = 1,2
           DO 10 I=1,25,III
             R1A(I)=R1A(I)+2.0
             R1A(I)=R1B(100)
             R1B(I)=R1A(I)+R1B(I)
             R1C(I)=R1B(I)+R1A(I)
10         CONTINUE


           DO 20 I=1,25,IIII
             IF(I.GT.10) THEN
               R2A(I)=R2A(I)+2.0
             ELSE
               R2A(I)=R2B(100)
               R2B(I)=R2A(I)+R2B(I)
               R2C(I)=R2B(I)+R2A(I)
             ENDIF
20         CONTINUE


           DO 30 I=1,97,2
             IF(I.GT.10) THEN
               R3A(I)=R3A(I)+INT(2.0)+IABS(R3A(98))+III+I
             ELSE
               R3A(I)=R3B(100)
               R3B(I)=R3A(I)+R3B(I)
               IF(I.LT.5) THEN
                 R3A(I)=R3B(100)+2+III+I
                 R3B(I)=R3A(I)+R3B(I)+2
               ENDIF
               R3C(I)=R3B(I)+R3A(I)+III
             ENDIF
30         CONTINUE


           DO 40 I=1,50 ,3
             R4A(MIN0(R3A(I),50))=R4B(MIN0(R3A(I),51))
             IF(R3C(I).GT.30) THEN
               R3C(I)=29
             ELSE
               R3C(I)=21
             ENDIF
             R4C(R3C(I)) = (1.0,1.0)
40         CONTINUE


           DO 100 I=25,50
             R1A(I)=R1A(I)+2.0
             R1A(I)=R1B(100)+R1B(20)
             R1B(I)=R1A(I)+R1B(I)+R1A(I)
             R1C(I)=R1B(I)+R1B(I)+R1A(I)
100        CONTINUE
           R3A(1)=1
           R3A(2)=2


           DO 200 I=75,100,MIN0(3,IABS(R3A(50)))
               R2A(I)=R2A(50)
             IF(I.GT.10) THEN
               R2A(I)=R2A(50)+R2A(1)
               R2A(I)=R2A(I)+2.0
             ELSE
               R2A(I)=R2B(50)+R2A(50)
               R2B(I)=R2A(I)+R2B(I)+R2A(I)
               R2C(I)=R2B(I)+R2A(I)+R2B(I)+R2B(I)*2.0
             ENDIF
200         CONTINUE
999         CONTINUE


           DO 300 I=50,75
             IF(R3A(1).EQ.1) THEN
               R2A(I)=R2A(I)**2.0
               IF(R3A(2).EQ.3) THEN
                 R2B(I)=R2A(I)**10.0
               ELSE
                 R2B(I)=R2A(I)**2.0
               ENDIF
             ENDIF
             IF(I.GT.10) THEN
             IF(R3A(1).EQ.1) THEN
               R2A(I)=R2A(I)**2.0
               IF(R3A(2).EQ.3) THEN
                 R2B(I)=R2A(I)**10.0
               ELSE
                 R2B(I)=R2A(I)**2.0
               ENDIF
             ENDIF
             ELSE
               R2B(I)=R2A(I)+R2B(I)+R2A(I)
                 R2B(I)=R2B(I)**2.0
               R2C(I)=R2B(I)+R2A(I)+R2B(I)+R2B(I)*2.0
             ENDIF
300         CONTINUE
         WRITE(6,*) R1A,R1B,R1C
         WRITE(6,771) R2A,R2B,R2C
771      FORMAT(1H ,100(D13.4,D13.4,D13.4,/))
         WRITE(6,*) R3A,R3B,R3C
         WRITE(6,*) R4A,R4B,R4C
         WRITE(6,*) R6A
         STOP
         END
