         COMMON /BLK1/R1A,R1B,R1C,R1D
         COMMON /BLK2/R2A,R2B,R2C,R2D
         COMMON /BLK3/R3A,R3B,R3C,R3D
         COMMON /BLK4/R4A,R4B,R4C,R4D
         REAL*4    B1A(1024)/1024*1.0/,B1B(1024)/1024*2.0/
         INTEGER*4 R1A(100),R1B(100),R1C(100),R1D(100)
         INTEGER*4 R2A(100),R2B(100),R2C(100),R2D(100)
         INTEGER*4 R3A(100),R3B(100),R3C(100),R3D(100)
         INTEGER*4 R4A(100),R4B(100),R4C(100),R4D(100)
         INTEGER*4 N/100/,J/2/,K/3/
         ISUM1 = J+K

           J=1
           DO 10 I=1,50
           IF(N.GT.50) THEN
             R1A(I)=R1A(I+1)**J+R1A(50)
             R1A(I+1)=R1A(I+2)**J+R1A(51)
             R1B(I)=R1A(I+1)**J+R1B(51)
             ISUM1 = ISUM1+J
           ELSE
             R1B(I+1)=R1A(I+2)**J+R1B(51)
             R1C(I)=R1A(I+1)**J+R1C(50)
           ENDIF
           R1C(I+1)=R1A(I+2)**J+R1C(51)
           R1D(I)=R1A(I+1)**J+R1D(51)
           R1D(I+1)=(J+1)**R1A(I+2)
10         CONTINUE

           ISUM2 = 0
           DO 20 J=1,2
           DO 20 I=1,50
           ISUM2=ISUM2+(I+J)
           R2A(I)=R1A(I+1)+1
           R2A(I+1)=R1A(I+2)+1
           R2A(I+2)=R1A(I+3)+1
           R2B(I)=R1A(I+1)**J
           R2B(I+1)=R1A(I+2)**I+R2B(52)
           R2B(I+2)=R1A(I+2)+1
           R2C(I)=R1A(I+3)+1
           R2C(I+1)=R1A(I+2)+1
           R2C(I+2)=R1A(I+2)+1
           R2D(I)=R1A(I+3)+1
           R2D(I+1)=R1A(I+2)+1
           R2D(I+2)=R1A(I+2)+1+R2D(52)
20         CONTINUE

           ISUM3=0
           DO 30 I=1,1024
30         B1A(I)=B1A(I)+B1B(I)
           DO 31 I=1,100
           IF(I.LE.96.AND.N.GT.I)  THEN
           ISUM3=ISUM3+(I-N)
           R3A(I+2)=R1A(I+3)+1
           R3A(I+3)=R1A(I+3)+1
           R3B(I)=R1A(I+1)+1
           R3B(I+1)=R3A(I+2)+1
           R3B(I+2)=R3A(I+2)+1
           R3B(I+3)=R3A(I+2)+1
           R3C(I)=R3A(I+3)+1
           R3C(I+1)=R3A(I+2)+1
           R3C(I+2)=R3A(I+2)+1
           R3C(I+3)=R3A(I+2)+1
           R3D(I)=R3A(I+3)+1
           R3D(I+1)=R3A(I+2)+1
           R3D(I+2)=R3A(I+2)+1
           R3D(I+3)=R3A(I+2)+1
           ENDIF
31         CONTINUE

           ISUM4=ISUM3
           DO 40 I=1,N-10
           ISUM4=ISUM4+(N-I)
           R4A(I)=R1A(I+1)+1
           R4A(I+1)=R1A(I+2)+1
           R4A(I+2)=R1A(I+3)+1
           R4A(I+3)=R1A(I+3)+1
           R4A(I+4)=R1A(I+3)+1
           IF(R4A(I+5).GT.R4A(100)) R4A(100)=R4A(I+5)
           R4B(I+1)=R1A(I+2)+1
           R4B(I+2)=R1A(I+2)+1
           ISUM3=ISUM3+I
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
40         CONTINUE

           J=1
           DO 140 KKK=1,50
           DO 110 I=1,50
           R1A(I)=R1A(I+1)**J
           R1A(I+1)=R1A(I+2)**J
           R1B(I)=R1A(I+1)**J
           R1B(I+1)=R1A(I+2)**J+R1B(51)
           R1C(I)=R1A(I+1)**J
           R1C(I+1)=R1A(I+2)**J
           R1D(I)=R1A(I+1)**J
           R1D(I+1)=(J+1)**R1A(I+2)+R1D(51)+R1D(51)+R1D(K+I)
110         CONTINUE

           ISUM5=0
           DO 120 J=1,2
           ISUM6=0
           DO 120 I=1,50
           IF(N.EQ.100.OR.J.EQ.1) THEN
           ISUM5=ISUM5+J
             R2A(I)=R1A(I+1)+1
             IF(R1A(I+2).LE.0.0) GOTO 9191
             R2A(I+1)=R1A(I+2)**R1A(I+2)
             R2A(I+2)=R1A(I+3)+1
             R2B(I)=R1A(I+1)**KKK
9191         R2B(I+1)=R1A(I+2)**I
           ELSE
             R2B(I+2)=R1A(I+2)**R1A(I+2)
             R2C(I)=R1A(I+3)+1
             R2C(I+1)=R1A(I+2)**K
             R2C(I+2)=R1A(I+2)**I
           ENDIF
           ISUM6=ISUM6+(KKK**R2D(I)-(KKK-1)**R2D(I))
           R2D(I)=R1A(I+3)+1
           R2D(I+1)=R1A(I+2)+1
           R2D(I+2)=R1A(I+2)+1
120         CONTINUE

           ISUM7=MIN0(100,IABS(ISUM6))
           ISUM8=MIN0(10,IABS(ISUM6))
           DO 130 I=1,1024
           IF(I.GT.600) GOTO 111
           ISUM7=ISUM7+I
130        B1A(I)=B1A(I)+B1B(I)
           GOTO 131
111        CONTINUE
131        CONTINUE
           DO 132 I=1,100
           IF(I.LE.96)  THEN
           ISUM8=ISUM8+KKK
           R3A(I+2)=R1A(I+3)+1
           R3A(I+3)=R1A(I+3)+1
           R3B(I)=R1A(I+1)**KKK
           R3B(I+1)=R1A(I+2)**I
           R3B(I+2)=R1A(I+2)**I
           R3B(I+3)=R1A(I+2)+1
           IF(KKK.EQ.1) R3C(I)=R1A(I+3)+1
           R3C(I+1)=R1A(I+2)+1
           R3C(I+2)=R1A(I+2)+1
           IF(KKK.EQ.2) R3C(I+3)=R1A(I+KKK)+1
           R3D(I)=R1A(I+3)**KKK
           R3D(I+1)=R1A(I+2)+1
           R3D(I+2)=R1A(I+2)+1
           R3D(I+3)=R1A(I+2)+1
           ENDIF
132         CONTINUE

           DO 140 I=1,N -10
           R4A(I)=R1A(I+1)+1
           R4A(I+1)=R1A(I+2)+1
           R4A(I+2)=R1A(I+3)**KKK
           R4A(I+3)=R1A(I+3)**I
           ISUM8=ISUM8-N
           R4A(I+4)=R1A(I+3)+1
           R4B(I)=R1A(I+1)**KKK
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
140         CONTINUE
         WRITE(6,*) ISUM1,ISUM2,ISUM3,ISUM4,ISUM5,ISUM6,ISUM7,ISUM8
         WRITE(6,*) R1A,R1B,R1C,R1D
         WRITE(6,*) R2A,R2B,R2C,R2D
         WRITE(6,*) R3A,R3B,R3C,R3D
         WRITE(6,*) R4A,R4B,R4C,R4D
         WRITE(6,*) B1A,B1B
         STOP
         END
         BLOCK DATA
         COMMON /BLK1/R1A,R1B,R1C,R1D
         COMMON /BLK2/R2A,R2B,R2C,R2D
         COMMON /BLK3/R3A,R3B,R3C,R3D
         COMMON /BLK4/R4A,R4B,R4C,R4D
         INTEGER*4 R1A(100),R1B(100),R1C(100),R1D(100)
         INTEGER*4 R2A(100),R2B(100),R2C(100),R2D(100)
         INTEGER*4 R3A(100),R3B(100),R3C(100),R3D(100)
         INTEGER*4 R4A(100),R4B(100),R4C(100),R4D(100)
         DATA R1A/100*1/,R1B/100*2/,R1C/100*1/,R1D/50*1,50*2/
         DATA R2A/100*1/,R2B/100*2/,R2C/100*1/,R2D/50*1,50*2/
         DATA R3A/100*1/,R3B/100*2/,R3C/100*1/,R3D/50*1,50*2/
         DATA R4A/100*1/,R4B/100*2/,R4C/100*1/,R4D/50*1,50*2/
         END
