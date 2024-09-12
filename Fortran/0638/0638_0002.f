         LOGICAL*4 L(1024)
         REAL*4 R1A(32),R1B(32)
         REAL*4 R2A(64),R2B(64)
         REAL*4 R3A(128),R3B(128)
         REAL*4 R4A(256),R4B(256)
         REAL*4 R5A(512),R5B(512)
         REAL*4 R6A(1024),R6B(1024)
         REAL*8 R1C(32),R1D(32)
         REAL*8 R2C(64),R2D(64)
         REAL*8 R3C(128),R3D(128)
         REAL*8 R4C(256),R4D(256)
         REAL*8 R5C(512),R5D(512)
         REAL*8 R6C(1024),R6D(1024)
         EQUIVALENCE(R6C(1),R1C(1))
         EQUIVALENCE(R6C(33),R2C(1))
         EQUIVALENCE(R6C(101),R3C(1))
         EQUIVALENCE(R6C(301),R4C(1))
         EQUIVALENCE(R6C(501),R5C(1))
         L = .false.
         R4B = 0
         R5B = 0
         R3B = 0
         R2B = 0
         R1B = 0
         R6B = 0
         DO 10 I=1,32
10         R1A(I)=1.0
         DO 20 I=1,64
20         R2A(I)=1.0
         DO 30 I=1,128
30         R3A(I)=1.0
         DO 40 I=1,256
40         R4A(I)=1.0
         DO 50 I=1,512
50         R5A(I)=1.0
         DO 60 I=1,1024
60         R6A(I)=1.0
         DO 100 I=1,32
100         IF(I.GT.16) R1A(I)=2.0
         DO 500 I=1,512
500         IF(I.GT.256) R5A(I)=2.0
         DO 200 I=1,64
200         IF(I.GT.32) R2A(I)=2.0
         DO 400 I=1,256
400         IF(I.GT.128) R4A(I)=2.0
         DO 300 I=1,128
300         IF(I.GT.64) R3A(I)=2.0
         DO 600 I=1,1024
600         IF(I.GT.512) R6A(I)=2.0
         DO 1000 J=1,2
         DO 1000 I=1,32
           IF(I.GT.20) THEN
             R1B(I)=3.0
           ELSE IF(R1A(1).EQ.2.0) THEN
             R1B(I)=4.0
           ENDIF
1000     CONTINUE
         DO 2000 J=1,2
         DO 2000 I=1,64
           IF(I.GT.20) THEN
             R2B(I)=3.0
           ELSE IF(R2A(1).EQ.2.0) THEN
             R2B(I)=4.0
           ENDIF
2000     CONTINUE
         DO 3000 J=1,2
         DO 3000 I=1,128
           IF(I.GT.60) THEN
             R3B(I)=3.0
           ELSE IF(R3A(1).EQ.2.0) THEN
             R3B(I)=4.0
           ENDIF
3000     CONTINUE
         DO 4000 J=1,2
         DO 4000 I=1,256
           IF(I.GT.220) THEN
             R4B(I)=3.0
           ELSE IF(R4A(1).EQ.2.0) THEN
             R4B(I)=4.0
           ENDIF
4000     CONTINUE
         DO 5000 J=1,2
         DO 5000 I=1,512
           IF(I.GT.20) THEN
             R5B(I)=3.0
           ELSE IF(R5A(1).EQ.2.0) THEN
             R5B(I)=4.0
           ENDIF
5000     CONTINUE
         DO 6000 J=1,2
         DO 6000 I=1,1024
           IF(I.GT.20) THEN
             L(I)=2.0.GT.R6A(I)
             R6B(I)=3.0
           ELSE IF(R6A(1).EQ.2.0) THEN
             L(I)=2.0.EQ.R6A(I)
             R6B(I)=4.0
           ENDIF
6000     CONTINUE
         R6B(1024)=6.5
         DO 7000 I=500,1001
           IF(MOD(I,2).EQ.1) L(I)=R6B(1024).GT.7.0
           IF(MOD(I-450,2).EQ.1) L(I-450)=R6B(1024).GT.7.0
7000     CONTINUE
         DO 8000 J=1,2
         DO 8001 I=1,32
           IF(I.GT.16) THEN
             R1C(I)=1.0
           ELSE
             R1C(I)=I
           ENDIF
8001       R1D(I)=I
         DO 8002 I=1,64
           IF(L(I)) R2C(I)=I+1.0
           R2C(I)=I
8002       R2D(I)=I
         DO 8003 I=1,128
           IF(L(I)) R3C(I)=I+1.0
           R3C(I)=I
8003       R3D(I)=I
         DO 8004 I=1,256
           IF(L(I)) R4C(I)=I+1.0
           R4C(I)=I
8004       R4D(I)=I
         DO 8005 I=1,512
           IF(L(I)) R5C(I)=I+1.0
           R5C(I)=I
8005       R5D(I)=I
         DO 8000 I=1,1024
           R6C(I)=I
8000       R6D(I)=I
         WRITE(6,*) R1A,R1B,R1C,R1D
         WRITE(6,*) R2A,R2B,R2C,R2D
         WRITE(6,*) R3A,R3B,R3C,R3D
         WRITE(6,*) R4A,R4B,R4C,R4D
         WRITE(6,*) R5A,R5B,R5C,R5D
         WRITE(6,*) R6A,R6B(2),R6D(1),L
         STOP
         END
