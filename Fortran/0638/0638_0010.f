         REAL*4 R1A(100),R1B(100),R1C(100)
         REAL*8 R2A(100),R2B(100),R2C(100)
         INTEGER*4 R3A(100),R3B(100),R3C(100)
         COMPLEX*8 R4A(100),R4B(100),R4C(100)
         COMPLEX*16 R5A(100),R5B(100),R5C(100)
         REAL*8  R6A(100),R6B(100),R6C(100)

         DO 1 I=1,100
           R1A(I)=0.5
           R2A(I)=0.5
           R3A(I)=5
           R4A(I)=(1.0,1.0)
           R5A(I)=(1.0,1.0)
1          R6A(I)=0.5

         DO 10 I=1,100
         R1B(I)=COS(R1A(I))
10       R1C(I)=R1B(I)+R1A(I)

         DO 11 I=1,50
         IF(I.GT.25) R1B(I)=COS(R1A(I))
         IF(I.LE.25) R1B(I)=2.0
11       R1C(I)=R1B(I)+R1A(I)

         DO 20 I=1,100
         R2B(I)=COS(R2A(I))
20       R2C(I)=R2B(I)+R2A(I)

         DO 21 I=1,50
         IF(I.GT.25) R2B(I)=COS(R2A(I))
         IF(I.LE.25) R2B(I)=2.0
21       R2C(I)=R2B(I)+R2A(I)

         DO 30 I=1,100
         R3B(I)=R3A(I)**R3A(I)
30       R3C(I)=R3B(I)+R3A(I)

         DO 31 I=1,50
         IF(I.GT.25) R3B(I)=R3A(I)**R3A(I)
         IF(I.LE.25) R3B(I)=I
31       R3C(I)=R3B(I)+R3A(I)

         DO 40 I=1,100
         R4B(I)=R4A(I)**R4A(I)
40       R4C(I)=R4B(I)+R4A(I)

         DO 41 I=1,50
         IF(I.GT.25) R4B(I)=R4A(I)**R4A(I)
         IF(I.LE.25) R4B(I)=R4A(I)**4
41       R4C(I)=R4B(I)+R4A(I)

         DO 50 I=1,100
         R5B(I)=R5A(I)**R5A(I)
50       R5C(I)=R5A(I)+R5A(I)

         DO 51 I=1,50
         IF(I.GT.25) R5B(I)=R5A(I)**R5A(I)
         IF(I.LE.25) R5B(I)=R5A(I)**4
51       R5C(I)=R5B(I)+R5A(I)

         DO 100 I=1,10
         R1C(I+10)=R1B(I)
         IF(I.GT.5) THEN
         R1B(I)=COS(R1A(I))
         ELSE
         R1B(I)=SIN(R1A(I))
         ENDIF
100      R1C(I)=R1B(I)+R1A(I)

         DO 200 I=1,10
         R2C(I+10)=R2B(I)
         IF(I.GT.5) THEN
         R2B(I)=COS(R2A(I))
         ELSE
         R2B(I)=SIN(R2A(I))
         ENDIF
200      R2C(I)=R2B(I)+R2A(I)
         A=DSIN(R2C(10))+DCOS(R2C(10))+DSIN(R2C(9))

         DO 300 I=1,10
         R3B(I)=R3A(I)**R3A(I)
         IF(I.GE.5) THEN
           R3B(I)=R3B(I)**R3B(I)+2
         ELSE IF(I.GT.10) THEN
           R3B(I)=R3B(I)**R3A(I)*2
         ENDIF
         R3B(I)=R3A(I)**R3A(I)
300      R3C(I)=R3B(I)+R3A(I)+INT(A)

         DO 400 I=1,10
         IF(I.GT.5) THEN
           R4B(I)=R4B(I)**2
         ELSE
           R4B(I)=R4B(I)**4
         ENDIF
400      R4C(I)=R4B(I)+R4A(I)

         DO 500 I=1,10
         IF(I.GT.5) THEN
           R5B(I)=R5B(I)**2
         ELSE
           R5B(I)=R5B(I)**4
         ENDIF
         R5B(I)=R5A(I)**R5A(I)
500      R5C(I)=R5A(I)+R5A(I)

         DO 600 I=1,100
         IF(I.GT.25) R6B(I)=R6A(I)**R6A(I)
         IF(I.LE.25) R6B(I)=R6A(I)**R6A(I)
600      R6C(I)=R6B(I)+R6A(I)
         WRITE(6,1110) R1A,R1B,R1C
1110     FORMAT(1H ,100(F10.5,F10.5,F10.5,/))
         WRITE(6,1111) R2A,R2B,R2C
1111     FORMAT(1H ,100(D10.5,D10.5,D10.5,/))
         WRITE(6,1112) R3A,R3B,R3C
1112     FORMAT(1H ,100(I8,I8,I8,/))
         WRITE(6,1113) R4A,R4B,R4C
1113     FORMAT(1H ,200(F13.5,F13.5,F13.5,/))
         WRITE(6,1114) R5A,R5B,R5C
1114     FORMAT(1H ,200(D13.5,D13.5,D13.5,/))
         WRITE(6,*) R6A,R6B,R6C
         STOP
         END
