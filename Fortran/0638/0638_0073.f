         INTEGER*4 R1A(100),R1B(100),R1C(100),R1D(100)
         INTEGER*4 R2A(100),R2B(100),R2C(100),R2D(100)
         INTEGER*4 R3A(100),R3B(100),R3C(100),R3D(100)
         INTEGER*4 R4A(100),R4B(100),R4C(100),R4D(100)
         DATA R1A/100*1/,R1B/100*1/,R1C/100*1/,R1D/100*1/
         DATA R2A/100*1/,R2B/100*1/,R2C/100*1/,R2D/100*1/
         DATA R3A/100*1/,R3B/100*1/,R3C/100*1/,R3D/100*1/
         DATA R4A/100*1/,R4B/100*1/,R4C/100*1/,R4D/100*1/
         INTEGER*4 N/10/,M/-10/
         INTEGER*4 LLL(100)/100*2/, L/1/

         DO 60 KKK=1,L
         DO 10 J=1,100,4
           R1B(J)=J
           IF(J.LT.97) THEN
           LLL(J)=J
           LLL(J+1)=J+1
           LLL(J+2)=J+2
           LLL(J+3)=J+3+KKK+L
           ENDIF
         DO 10 I=1,100,4
           R1A(I)=J
           LLL(I)=J
           R1C(I)=J+I
           R1D(J)=I+J
           R2A(I)=J+1
           R2B(J)=I
           R2C(I)=J*2
           R2D(J)=I*2
           R3A(I)=J+2
           R3B(J)=I
           R3C(I)=J*2
           R3D(J)=I+R1C(I)
           R4A(I)=J+R1D(J)
           R4B(J)=I
           R4C(I)=J
           R4D(J)=I
           IF(M.LT.100.AND.I.LE.99) THEN
             R1A(J+1)=I      + R1A(I)  +   16-J
             R1B(J+1)=I      + R1B(I)  +   15-J
             R1C(J+1)=I      + R1C(I)  +   14-J
             R1D(J+1)=I      + R1D(I)  +   13-J
             R2A(J+1)=KKK    + R2A(I)  +   12-J
             R2B(J+1)=KKK    + R2B(I)  +   11-J
             R2C(J+1)=KKK    + R2C(I)  +   10-J
             R2D(J+1)=L      + R2D(I)  +    9-J
             R3A(J+1)=L      + R3A(I)  +    8-J
             R3B(J+1)=10+L   + R3B(I)  +    7
             R3C(J+1)=11     + R3C(I)  +    6
             R3D(J+1)=12     + R3D(I)  +    5
             R4A(J+1)=13     + R4A(I)  +    4
             R4B(J+1)=14     + R4B(I)  +    3
             R4C(J+1)=15     + R4C(I)  +    2
             R4D(J+1)=16     + R4D(I)  +    1
           IF(J.LE.98) THEN
             R1A(J+2)=L      + R1A(J+1)  -   J
             R1B(J+2)=KKK    + R1B(J+1)  -   J
             R1C(J+2)=L+KKK  + R1C(J+1)  -   J
             R1D(J+2)=I      + R1D(J+1)  -   J
             R2A(J+2)=I      + R2A(J+1)  -   J
             R2B(J+2)=I      + R2B(J+1)  -   J
             R2C(J+2)=I      + R2C(J+1)  -   J
             R2D(J+2)=I      + R2D(J+1)  -   J
             R3A(J+2)=I      + R3A(J+1)  -   J
             R3B(J+2)=I      + R3B(J+1)  -   J
             R3C(I+2)=I      + R3C(I+1)  -   J
             R3D(I+2)=I      + R3D(I+1)  -   J
             R4A(I+2)=13     + R4A(I+1)  +    4
             R4B(I+2)=14     + R4B(I+1)  +    3
             R4C(I+2)=15     + R4C(I+1)  +    2
             R4D(I+2)=16     + R4D(I+1)  +    1
           ENDIF
           IF(N.LT.10000.AND.I.LE.97) THEN
             R1A(I+3)=1      + R1A(I+2)  +   16
             R1B(I+3)=2      + R1B(I+2)  -   15
             R1C(I+3)=3      + R1C(I+2)  +   14
             R1D(I+3)=4      + R1D(I+2)  -   13
             R2A(I+3)=5      + R2A(I+2)  +   12
             R2B(I+3)=6      + R2B(I+2)  -   11
             R2C(I+3)=7      + R2C(I+2)  +   10
             R2D(I+3)=8      + R2D(I+2)  -    9
             R3A(I+3)=9      + R3A(I+2)  +    8
             R3B(I+3)=10     + R3B(I+2) -     7
             R3C(I+3)=11     + R3C(I+2)  +    6
             R3D(I+3)=12     + R3D(I+2)  -    5
             R4A(I+3)=13     + R4A(I+2)  +    4
             R4B(I+3)=14     + R4B(I+2)  +    3
             R4C(I+3)=15     + R4C(I+2)  *    2
             R4D(I+3)=16     + R4D(I)  **   1
           ENDIF
           ENDIF
10         CONTINUE
           DO 9 I=1,100
             IF(LLL(I).GT.100) LLL(I)=I
9          CONTINUE

           DO 20 I=1,10
             IF(N.GT.5) THEN
              R1C(I)=R1B(I)+KKK
             ELSE
              R1D(I)=R1D(I)*2
             ENDIF
             R1A(LLL(I))=R1B(I)
             R1C(I)=R1D(I)+R1D(I)
             R1B(I)=R1D(I)
             IF(N.GT.5) THEN
              R1C(I)=R1B(I)+1+KKK+L
             ELSE
              R1D(I)=R1D(I)+2 +KKK+L
             ENDIF
20           CONTINUE
           DO 40 J=1,10,2
           DO 30 I=1,10,2
             IF(N.GT.5) THEN
              R2C(I)=R2B(10)+R2C(10)
             ELSE
              R2D(I)=R2D(10)*2
             ENDIF
             IF(M.NE.0) R1B(I)=I
             R2D(I)=R2B(LLL(I))+R2A(I)
             R2C(J)=R2D(KKK)
             R2B(J)=R2D(L)
             IF(M.GT.5) THEN
              R3C(J)=R3B(10)+R3C(10)
             ELSE
              R3D(I+J)=R3D(10)*2
             ENDIF
             R3D(I)=R4D(10)+R3A(I)
             IF(R3D(I).LT.10) THEN
               R3A(J)=R3A(I)**R3A(10)
               ENDIF
             R3C(I)=R3D(I)+L*KKK
             R3B(I)=R3D(I)+L*KKK
30           CONTINUE
           DO 31 I=10,30,KKK
             IF(I.GT.20) THEN
               R1A(I)=R1D(30)+R1D(30)+R1D(30)+R1D(30)
               R1B(I)=R1A(I)+R1B(J)+R1D(30)+J
               IF(N.LT.100) R4B(I)=R4B(30)
               R4C(LLL(I))=R1B(I)+R1C(J)+R1D(30)+LLL(I)+LLL(30) 
               IF(M+10+KKK.NE.99) R4C(I)=R4C(I)+R4C(30)
               R1D(I)=R1C(J)+R1D(J)+R1D(30)
             ENDIF
31           CONTINUE
           IF(M.EQ.-10) GOTO 32

32         DO 40 I=10,30,2
             IF(R2B(1).GT.0) THEN
               R1A(I)=R1A(30)+R1D(30)+R1D(30)+R1D(30)
               R1A(I)=R1A(I)+R1B(I)+R1D(30)
               IF(M+10.NE.99) R4C(I)=R4C(I)+R4C(30)
               R1A(I)=R1A(I)+R1C(I)+R1D(30)
               R1D(I)=R1C(I)+R1D(I)+R1D(30)+R1D(30)+R1D(9)
             ENDIF
40           CONTINUE
           IF(N.GT.100) GOTO 222
           DO 50 J=30,33
           DO 22 I=11,19
             R2A(I)=R2B(I)**I
             IF(N.GT.5) THEN
              R1C(I)=R1B(I)
             ELSE
              R1D(I)=R1D(I)*2+J
             ENDIF
             R1A(I)=R1A(19)**J
             R1C(I)=R1D(I)+R1D(I)
             R1B(I)=R1D(I)
             IF(N.GT.5) THEN
              R1C(I)=R1B(I)+1
             ELSE
              R1D(I)=R1D(I)+2
             ENDIF
             R2D(I)=(R2A(I)-R2B(I)**(J-I))
22           CONTINUE
           DO 50 I=10,30
             IF(I.GT.20) THEN
               R2A(I)=R2D(30)+R2D(30)+R2D(30)+R2D(30)
               R2B(I)=R2A(I)+R2B(I)+R2D(30)+R2D(30)
               IF(R1A(30).GT.-9999999.0) R1A(I)=R1A(30)
               R2C(I)=R2B(I)+R2C(I)+R2D(30)+R2D(30)
               R2D(I)=R2C(I)+R2D(I)+R2D(30)+R2D(J)
             ELSE
               R3A(I)=R3D(30)+R3D(30)+R3C(30)+R3D(30)
               R3B(I)=R3A(I)+R3B(I)+J
               IF(R4A(30).GT.-9999999.0) R4A(I)=R4A(30)
               R3C(I)=R3B(I)+R3C(I)
               R3D(I)=R3C(I)+R3D(I)+R3D(30)
             ENDIF
50           CONTINUE
222        DO 60 J=2,6
           DO 60 I=10,30,2
             IF(R1A(LLL(I)).LT.1000000) THEN
               IF(LLL(J).EQ.5) GOTO 111
               R4A(I)=R4D(30)+R4D(30)+R4D(30)+R4D(30)
               IF(R1A(30).GT.-1000000+J) GOTO 333
111            R4B(I)=R4A(I)+R4B(I)
               R4C(I)=R4B(I)+R4C(I)
333            R4D(I)=R4C(I)+R4D(I)+KKK
             ELSE
               R4A(I)=R4D(30)+R4D(30)+R4D(30)+R4D(30)
               R4B(I)=R4A(I)+R4B(I)
               R2A(LLL(I))=LLL(I)+LLL(30)
               R4C(I)=R4B(I)+R4C(I)+R4D(30)
               R4D(I)=R4C(I)+R4D(I)+R4D(30)
               IF(LLL(I).GT.50.AND.LLL(I).LT.80) LLL(I)=LLL(I)-1+KKK
             ENDIF
60           CONTINUE
         WRITE(6,*) L,R1A,R1B,R1C,R1D
         WRITE(6,*) R2A,R2B,R2C,R2D
         WRITE(6,*) R3A,R3B,R3C,R3D
         WRITE(6,*) R4A,R4B,R4C,R4D
         STOP
         END
