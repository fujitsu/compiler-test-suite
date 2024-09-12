         COMMON /BLK1/R1A,R1B,R1C,R1D
         COMMON /BLK2/R2A,R2B,R2C,R2D
         COMMON /BLK3/R3A,R3B,R3C,R3D
         COMMON /BLK4/R4A,R4B,R4C,R4D
         REAL*4    B1A(1024)/1024*1.0/,B1B(1024)/1024*2.0/
         REAL*4 R1A(2048),R1B(2048),R1C(2048),R1D(2048)
         REAL*4 R2A(2048),R2B(2048),R2C(2048),R2D(2048)
         REAL*4 R3A(2048),R3B(2048),R3C(2048),R3D(2048)
         REAL*4 R4A(2048),R4B(2048),R4C(2048),R4D(2048)
         INTEGER*4 N/2048/

           DO 10 J=1,2
           DO 11 I=31,50
           IF(N.GT.50) THEN
             R1A(I)=R1A(I+1)
             R1A(I+1)=R1A(I+2)
             R1B(I)=R1A(I+1)
           ELSE
             R1B(I+1)=R1A(I+2)
             R1C(I)=R1A(I+1)
           ENDIF
           R1C(I+1)=R1A(I+2)
           R1D(I)=R1A(I+1)
11         R1D(I+1)=(J+1)
           DO 10 I=1,31
           IF(N.GT.50) THEN
             R1A(I)=R1A(I+1)
             R1A(I+1)=R1A(I+2)
             R1B(I)=R1A(I+1)
           ELSE
             R1B(I+1)=R1A(I+2)
             R1C(I)=R1A(I+1)
           ENDIF
           R1C(I+1)=R1A(I+2)
           R1D(I)=R1A(I+1)
           R1D(I+1)=(J+1)
10         CONTINUE
           B1A(1)=B1B(N-2000)

           DO 20 J=1,2
           DO 20 I=1,2048
           B1A(1)=B1A(1)+FLOAT(I)+FLOAT(J)+FLOAT(N-2000)
           R2A(I)=R1A(I)+1
           R2A(I)=R1A(I)+1
           R2A(I)=R1A(I)+1
           R2B(I)=R1A(I)
           R2B(I)=R1A(I)
           R2B(I)=R1A(I)+1
           R2C(I)=R1A(I)+1
           R2C(I)=R1A(I)+1
           R2C(I)=R1A(I)+1
           R2D(I)=R1A(I)+1
           R2D(I)=R1A(I)+1
           R2D(I)=R1A(I)+1+R2D(2048)
20         CONTINUE

           DO 32 J=1,2
           DO 30 I=1,80
           B1A(I)=B1A(I)+B1B(I)
           IF(I.LE.96.AND.N.GT.I)  THEN
           R3A(I+2)=R1A(I+3)+1
           R3A(I+3)=R1A(I+3)+1
           ELSE
           R3B(I+1)=R3A(I+2)+1
           R3B(I+2)=R3A(I+2)+1
           R3B(I+3)=R3A(I+2)+1
           ENDIF
30         R3C(I+1)=R3A(I+2)+1
           R3C(1)=0
           DO 32 I=1,80
           IF(I.GT.40) THEN
           R3D(I+1)=R3A(I+2)+1
           R3D(I+2)=R3A(I+2)+1
           R3D(I+3)=R3A(I+2)+1
           ENDIF
32         CONTINUE
           IF(R3D(1).GT.100) GOTO 41
            R3D(1)=1000
 41        DO 40 J=1,N,1024
           IF(J.EQ.2) GOTO 42
 42        DO 40 I=170,370
           R4A(I)=R1A(I+1)+1
           R4A(I+1)=R1A(I+2)+1
           R4A(I+2)=R1A(I+3)+1
           R4A(I+3)=R1A(I+3)+1
           R4A(I+4)=R1A(I+3)+1
           IF(R4A(I+5).GT.R4A(2048)) R4A(2048)=R4A(I+5)
           R4B(I+1)=R1A(I+2)+1
           R4B(I+2)=R1A(I+2)+1
           R4B(I+3)=R1A(I+2)+1
           R4B(I+4)=R1A(I+2)+1
           R4C(I)=R1A(I+3)+1
           R4C(I+1)=R1A(I+2)+1
           R4C(I+2)=R1A(I+2)+1
           R4C(I+3)=R1A(I+2)+1
           R4C(I+4)=R1A(I+2)+1
           R4D(I)=R1A(I+3)+1
           R4D(I+1)=R1A(I+2)+1
           R4D(I+2)=R1A(I+2)+1
           R4D(I+3)=R1A(I+2)+1
           R3D(I+4)=R1A(I+2)+1
           IF(R3D(1000+I).GT.50) GOTO 40
           R3D(1000+I)=R3D(1000+I)**R3D(1000+I)+R3D(1370)
40         CONTINUE

           DO 110 KKK=1,50
           DO 110 I=380,800
           R1A(I)=R1A(I+1)
           R1A(I+1)=R1A(I+2)
           R1B(I)=R1A(I+1)+1
           R1B(I+1)=R1A(I+2)
           R1C(I)=R1A(I+1)
4          R1C(I+1)=R1A(I+2)
           R1D(I)=R1A(I+1)
           R1D(I+1)=(J+1)+KKK
           IGO=1
           IF(R1D(I+10).GT.10) IGO=IGO+1
           IF(R1D(I+11).GT.10) IGO=IGO+1
           IF(R1D(I+12).GT.10) IGO=IGO+1
           R1D(I+12)=1
           R1D(I+11)=2
           R1D(I+13)=3
           GOTO(1,2,3,4) , IGO
3          R1D(I+14)=10
2          CONTINUE
110         CONTINUE
1          DO 120 J=1,2
           DO 120 I=800,1600
           IF(N.EQ.2048.OR.J.EQ.1) THEN
             R2A(I)=R1A(I+1)+1
           ELSE
             R2C(I)=R1A(I+3)+1
           ENDIF
           R2D(I+2)=R1A(I+2)+1
120         CONTINUE
           DO 200 J=1,N-2040
           IF(J.GT.5) GOTO 200
           DO 201 I=1,10,2
           IF(I.GT.5) R1A(I)=R1A(I)+R1B(I)
201        CONTINUE
           DO 202 I=1,72,2
           IF(I.GT.5) R2A(I)=R2A(I)+R2B(I)
202        CONTINUE
           DO 203 I=1,250,2
           IF(I.GT.5) R3A(I)=R3A(I)+R3B(I)
203        CONTINUE
           DO 204 I=1,500,2
           IF(I.GT.5) R4A(I)=R4A(I)+R4B(I)
204        CONTINUE
           DO 205 I=1024,2048,2
           IF(I.GT.5) R1B(I)=R1B(I)+R1B(I)
205        CONTINUE
           DO 206 I=1,2048,2
           IF(I.GT.5) R1A(I)=R1A(I)+R1B(I)
206        CONTINUE
200         CONTINUE

            DO 300 I=2,2048
              R1A(1)=R1A(1)+R1A(I)
              R2A(1)=R2A(1)+R2A(I)
              R3A(1)=R3A(1)+R3A(I)
              R4A(1)=R4A(1)+R4A(I)
              R1B(1)=R1B(1)+R1B(I)
              R2B(1)=R2B(1)+R2B(I)
              R3B(1)=R3B(1)+R3B(I)
              R4B(1)=R4B(1)+R4B(I)
              R1C(1)=R1C(1)+R1C(I)
              R2C(1)=R2C(1)+R2C(I)
              R3C(1)=R3C(1)+R3C(I)
              R4C(1)=R4C(1)+R4C(I)
              R1D(1)=R1D(1)+R1D(I)
              R2D(1)=R2D(1)+R2D(I)
              R3D(1)=R3D(1)+R3D(I)
300           R4D(1)=R4D(1)+R4D(I)
         WRITE(6,*) R1A(1),R1B(1),R1C(1),R1D(   1 )
         WRITE(6,*) R2A(1),R2B(1),R2C(1),R2D (  1 )
         WRITE(6,*) R3A(1),R3B(1),R3C(1),R3D (  1 )
         WRITE(6,*) R4A(1),R4B(1),R4C(1),R4D (  1 )
         WRITE(6,*) B1A,B1B
         STOP
         END
         BLOCK DATA
         COMMON /BLK1/R1A,R1B,R1C,R1D
         COMMON /BLK2/R2A,R2B,R2C,R2D
         COMMON /BLK3/R3A,R3B,R3C,R3D
         COMMON /BLK4/R4A,R4B,R4C,R4D
         REAL*4 R1A(2048),R1B(2048),R1C(2048),R1D(2048)
         REAL*4 R2A(2048),R2B(2048),R2C(2048),R2D(2048)
         REAL*4 R3A(2048),R3B(2048),R3C(2048),R3D(2048)
         REAL*4 R4A(2048),R4B(2048),R4C(2048),R4D(2048)
      DATA R1A/2048*1/,R1B/2048*2/,R1C/2048*1/,R1D/2048*2/
      DATA R2A/2048*1/,R2B/2048*2/,R2C/2048*1/,R2D/2048*2/
      DATA R3A/2048*1/,R3B/2048*2/,R3C/2048*1/,R3D/2048*2/
      DATA R4A/2048*1/,R4B/2048*2/,R4C/2048*1/,R4D/2048*2/
       END
