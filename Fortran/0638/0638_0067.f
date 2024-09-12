         REAL*4 R1A(100),R1B(100),R1C(100),R1D(100)
         REAL*4 R2A(100),R2B(100),R2C(100),R2D(100)
         REAL*4 R3A(100),R3B(100),R3C(100),R3D(100)
         REAL*4 R4A(100),R4B(100),R4C(100),R4D(100)

         DO 10 I=1,100
           R1A(I)=0.1
           R1B(I)=0.2
           R1C(I)=0.4
           R1D(I)=0.8
           R2A(I)=0.1
           R2B(I)=0.2
           R2C(I)=0.4
           R2D(I)=0.8
           R3A(I)=0.1
           R3B(I)=0.2
           R3C(I)=0.4
           R3D(I)=0.8
           R4A(I)=0.1
           R4B(I)=0.2
           R4C(I)=0.4
           R4D(I)=0.8
10         CONTINUE

           DO 20 I=1,10
             R1A(I)=R1B(I)
             R1B(I)=R1A(I)
             R1C(I)=R1B(I)
             R1A(I)=R1C(I)*R1D(I)
             R1B(I)=R1A(I)/R1D(I)
             R1C(I)=R1B(I)+R1D(I)
             R1D(I)=R1C(I)
20         CONTINUE
           DO 30 I=2,20
             R2A(I+20)=R2B(I*4)
             R2C(I*5)=R2C(I*4)+R2A(I+20)
30           R2D(I*5)=R2C(I*5)

           DO 40 I=1,10
             IF(R4A(1).GT.0.0.AND.I.GT.5) THEN
               R3A(I)=R3A(I)+2.0
               R3B(I)=R3A(I)+2.0
               R3C(I)=R3A(I)+2.0
               R3A(I)=R3A(I)+2.0
             ELSE
               R3A(I)=R3A(I)+2.0
               R3B(I)=R3A(I)+2.0
               R3C(I)=R3A(I)+2.0
               R3D(I)=R3A(I)+2.0
               IF(R2D(35).GE.0.0) THEN
                 R3A(I)=R3B(I)+1.0
                 R3B(I)=R3B(I)+1.0
                 R3C(I)=R3B(I)+1.0
                 R3D(I)=R3B(I)+1.0
               ENDIF
             ENDIF
40         CONTINUE

           DO 50 I=1,10
             R4A(I)=R4A(I)+R4A(10)
             R4B(I)=R4B(10)+R4B(11)
             R4C(I)=R4C(10)+R4D(10)
             R4D(I)=R4D(10)
50         CONTINUE
           DO 60 I=20,30,2
             IF(R4A(20).GT.0.0) THEN
               R4A(I)=1.0
             ENDIF
             IF(R4B(20).GT.0.0.OR.R4B(I).GE.0.0) THEN
               R4B(I)=R4B(I)+R4B(10)
             ENDIF
             IF(R4B(20).GT.0.0.OR.R4B(21).GE.0.0) THEN
               R4B(I)=R4B(I)+R4B(20)
             ENDIF
             IF(R4C(20).GT.0.0) THEN
               R4D(I)=R4D(I)+R4D(20)
               IF(R4C(I).GT.0.0) THEN
                 R4C(I+20)=R4C(I)+R4D(I)+R4C(50)
                 R4C(I)=R4C(I+20)
               ENDIF
             ENDIF
60         CONTINUE
           DO 70 I=90,100
             IF(I.GT.95) THEN
               R4A(I)=R4A(100)*2.0
             ELSE
               R4A(I)=R4A(100)*3.0
             ENDIF
70         CONTINUE

           DO 80 I=1,10
             IF(R4A(10).GT.0.0) THEN
               R4B(10)=R4C(I)
             ELSE
               R4B(I)=R4C(I)
             ENDIF
 80        CONTINUE
           DO 90 I=11,20
             IF(R4A(20).GT.0.0) THEN
               R4B(I)=R4C(I)+R4B(20)
             ELSE
               R4B(20)=R4C(I)
             ENDIF
 90        CONTINUE

           DO 100 I=50,83
             IF(R3A(1).GT.0.0.AND.I.GT.66) THEN
               IF(R3A(I).GT.0.0) THEN
                 R3B(I)=R3B(I)+R3A(1)+R3A(I)
               ENDIF
               ELSE
                 R3A(50)=R3B(I)
             ENDIF
100        CONTINUE
           A=0.0
           DO 110 I=60,83,2
             IF(R3A(1).GT.A.AND.I.LE.66) THEN
               IF(R3A(I).GT.0.0) THEN
                 R3B(I)=R3B(I)+R3A(1)+R3A(I)
               ENDIF
               ELSE
                 R3A(60)=R3B(I)
             ENDIF
             A=A+R1A(I)
110        CONTINUE
           J=0
           B=-1000000.0
           DO 120 I=1,100
             IF(R2A(I).GT.B) THEN
               J=I
               B=R2A(I)
             ELSE
               R2A(J)=B
             ENDIF
120        CONTINUE
         WRITE(6,1239) R1A,R1B,R1C,R1D
1239     FORMAT(1H ,100(F13.5,F13.5,F13.5,F13.5,/))
         WRITE(6,*) R2A,R2B,R2C,R2D
         WRITE(6,*) R3A,R3B,R3C,R3D
         WRITE(6,*) R4A,R4B,R4C,R4D
         CALL SUB1
         STOP
         END
         SUBROUTINE SUB1
         REAL*4 R1A(100),R1B(100),R1C(100),R1D(100)
         REAL*4 R2A(100),R2B(100),R2C(100),R2D(100)
         REAL*4 R3A(100),R3B(100),R3C(100),R3D(100)
         REAL*4 R4A(100),R4B(100),R4C(100),R4D(100)
         EQUIVALENCE (R1A(1),R2A(1)),(R1B(1),R2B(1))
         EQUIVALENCE (R1C(1),R2C(1)),(R1B(1),R2D(1))
         EQUIVALENCE (R1A(1),R3A(1)),(R3A(1),R4A(1))
         EQUIVALENCE (R1A(1),R3B(1)),(R1B(1),R3B(1))

         DO 10 J = 1 , 2
           DO 11 I=1,100
             R1A(I)=1.0
             R3A(I)=2.0
             R2A(I)=2.0
             R3A(I)=1.0
             R4A(I)=1.0
             R1B(I)=1.0
             R2B(I)=2.0
             R3B(I)=1.0
             R4B(I)=1.0
             R1C(I)=1.0
             R2C(I)=2.0
             R3C(I)=1.0
             R4C(I)=1.0
             R1D(I)=1.0
             R2D(I)=3.0
             R3D(I)=1.0
11           R4D(I)=1.0
           DO 10 I=1,100
             R1A(I)=1.0
             R3A(I)=1.0
             R2A(I)=J
             R3A(I)=J
             R4A(I)=J
             R1B(I)=J
             R2B(I)=J
             R3B(I)=J
             R4B(I)=J
             R1C(I)=J
             R2C(I)=J
             R1D(I)=J
10           R2D(I)=J

           DO 20 I=1,10
             R1A(I)=R1B(I)
             R1B(I)=R1A(I)
             R1C(I)=R1B(I)
             R1A(I)=R1C(I)*R1D(I)
             R1B(I)=R1A(I)/R1D(I)
             R1C(I)=R1B(I)+R1D(I)
             R1D(I)=R1C(I)
20         CONTINUE
           DO 30 I=2,20
             R2A(I+20)=R2B(I*4)
             R2C(I*5)=R2C(I*4)+R2A(I+20)
30           R2D(I*5)=R2C(I*5)

           DO 40 I=1,10
             IF(R4A(1).GT.0.0.AND.I.GT.5) THEN
               R3A(I)=R3A(I)+2.0
               R3B(I)=R3A(I)+2.0
               R3C(I)=R3A(I)+2.0
               R3A(I)=R3A(I)+2.0
             ELSE
               R3A(I)=R3A(I)+2.0
               R3B(I)=R3A(I)+2.0
               R3C(I)=R3A(I)+2.0
               R3D(I)=R3A(I)+2.0
               IF(R2D(35).GE.0.0) THEN
                 R3A(I)=R3B(I)+1.0
                 R3B(I)=R3B(I)+1.0
                 R3C(I)=R3B(I)+1.0
                 R3D(I)=R3B(I)+1.0
               ENDIF
             ENDIF
40         CONTINUE

           DO 50 I=1,10
             R4A(I)=R4A(I)+R4A(10)
             R4B(I)=R4B(10)+R4B(11)
             R4C(I)=R4C(10)+R4D(10)
             R4D(I)=R4D(10)
50         CONTINUE
           DO 60 I=20,30,2
             IF(R4A(20).GT.0.0) THEN
               R4A(I)=1.0
             ENDIF
             IF(R4B(20).GT.0.0.OR.R4B(I).GE.0.0) THEN
               R4B(I)=R4B(I)+R4B(10)
             ENDIF
             IF(R4B(20).GT.0.0.OR.R4B(21).GE.0.0) THEN
               R4B(I)=R4B(I)+R4B(20)
             ENDIF
             IF(R4C(20).GT.0.0) THEN
               R4D(I)=R4D(I)+R4D(20)
               IF(R4C(I).GT.0.0) THEN
                 R4C(I+20)=R4C(I)+R4D(I)+R4C(50)
                 R4C(I)=R4C(I+20)
               ENDIF
             ENDIF
60         CONTINUE
           DO 70 I=90,100
             IF(I.GT.95) THEN
               R4A(I)=R4A(100)*2.0
             ELSE
               R4A(I)=R4A(100)*3.0
             ENDIF
70         CONTINUE

           DO 80 I=1,10
             IF(R4A(10).GT.0.0) THEN
               R4B(10)=R4C(I)
             ELSE
               R4B(I)=R4C(I)
             ENDIF
 80        CONTINUE
           DO 90 I=11,20
             IF(R4A(20).GT.0.0) THEN
               R4B(I)=R4C(I)+R4B(20)
             ELSE
               R4B(20)=R4C(I)
             ENDIF
 90        CONTINUE

           DO 100 I=50,83
             IF(R3A(1).GT.0.0.AND.I.GT.66) THEN
               IF(R3A(I).GT.0.0) THEN
                 R3B(I)=R3B(I)+R3A(1)+R3A(I)
               ENDIF
               ELSE
                 R3A(50)=R3B(I)
             ENDIF
100        CONTINUE
           A=0.0
           DO 110 I=60,83,2
             IF(R3A(1).GT.A.AND.I.LE.66) THEN
               IF(R3A(I).GT.0.0) THEN
                 R3B(I)=R3B(I)+R3A(1)+R3A(I)
               ENDIF
               ELSE
                 R3A(60)=R3B(I)
             ENDIF
             A=A+R1A(I)
110        CONTINUE
           J=0
           B=-1000000.0
           DO 120 I=1,100
             IF(R2A(I).GT.B) THEN
               J=I
               B=R2A(I)
             ELSE
               R2A(J)=B
             ENDIF
120        CONTINUE
         WRITE(6,*) R1A,R1B,R1C,R1D
         WRITE(6,*) R2A,R2B,R2C,R2D
         WRITE(6,*) R3A,R3B,R3C,R3D
         WRITE(6,*) R4A,R4B,R4C,R4D
         RETURN
         END
