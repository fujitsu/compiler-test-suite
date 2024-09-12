         COMMON /BLK1/R1A,R1B,R1C,R1D
         COMMON /BLK2/R2A,R2B,R2C,R2D
         COMMON /BLK3/R3A,R3B,R3C,R3D
         COMMON /BLK4/R4A,R4B,R4C,R4D
         REAL*4    B1A(1024)/1024*1.0/,B1B(1024)/1024*2.0/
         INTEGER*4 R1A(100),R1B(100),R1C(100),R1D(100)
         INTEGER*4 R2A(100),R2B(100),R2C(100),R2D(100)
         INTEGER*4 R3A(100),R3B(100),R3C(100),R3D(100)
         INTEGER*4 R4A(100),R4B(100),R4C(100),R4D(100)
         INTEGER*4 N/100/,J/2/

           DO 10 I=1,50
           R1A(I)=R1A(I+1)**J
           R1A(I+1)=R1A(I+2)**J
           R1B(I)=R1A(I+1)**J
           R1B(I+1)=R1A(I+2)**J**R1A(I+2)**R1A(I+1)
           R1C(I)=R1A(I+1)**J
           R1C(I+1)=R1A(I+2)**J
           R1D(I)=R1A(I+1)**J
           R1D(I+1)=(J+1)**R1A(I+2)
10         CONTINUE

           DO 20 J=1,2
           DO 20 I=1,50
           R2A(I)=R1A(I+1)+1
           R2A(I+1)=R1A(I+2)+1
           R2A(I+2)=R1A(I+3)+1
           R2B(I)=R1A(I+1)**J
           R2B(I+1)=R1A(I+2)**I
           R2B(I+2)=R1A(I+2)**I**R1A(I+2)
           R2C(I)=R1A(I+3)+1
           R2C(I+1)=R1A(I+2)+1
           R2C(I+2)=R1A(I+2)+1
           R2D(I)=R1A(I+3)+1
           R2D(I+1)=R1A(I+2)+1
           R2D(I+2)=R1A(I+2)+1
20         CONTINUE

           DO 30 I=1,N
           B1A(I)=B1A(I)+B1B(I)**3
           IF(I.LE.96)  THEN
           R3A(I+2)=R1A(I+3)**INT(B1B(I))
           R3A(I+3)=R1A(I+3)**INT(B1B(I))
           R3B(I)=R1A(I+1)+1
           R3B(I+1)=R1A(I+2)+1
           R3B(I+2)=R1A(I+2)+1+INT(B1A(I))
           R3B(I+3)=R1A(I+2)+1
           R3C(I)=R1A(I+3)+1+INT(B1B(I))
           R3C(I+1)=R1A(I+2)+1
           R3C(I+2)=R1A(I+2)+1
           R3C(I+3)=R1A(I+2)+1
           R3D(I)=R1A(I+3)+1
           R3D(I+1)=R1A(I+2)+1
           R3D(I+2)=R1A(I+2)+1
           R3D(I+3)=R1A(I+2)+1
           ENDIF
30         CONTINUE

           DO 40 I=1,N-12
           R4A(I)=R1A(I+1)+1
           R4A(I+1)=R1A(I+2)+1
           R4A(I+2)=R1A(I+3)+1
           R4A(I+3)=R1A(I+3)+1
           R4A(I+4)=R1A(I+3)**IABS(N-98)
           R4B(I)=R1A(I+1)+1
           R4B(I+1)=R1A(I+2)**IABS(N-98)
           R4B(I+2)=R1A(I+2)+1
           R4B(I+3)=R1A(I+2)**IABS(N-97)
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
           J=2
           DO 110 I=1,50
           R1A(I)=R1A(I+1)**J
           R1A(I+1)=R1A(I+2)**J
           R1B(I)=R1A(I+1)**J
           R1B(I+1)=R1A(I+2)**J
           R1C(I)=R1A(I+1)**J
           R1C(I+1)=R1A(I+2)**J
           R1D(I)=R1A(I+1)**J
           R1D(I+1)=(J+1)**R1A(I+2)
110         CONTINUE

           DO 120 J=1,2
           DO 120 I=1,50
           R2A(I)=R1A(I+1)+1
           R2A(I+1)=R1A(I+2)+1
           R2A(I+2)=R1A(I+3)+1
           R2B(I)=R1A(I+1)**KKK
           R2B(I+1)=R1A(I+2)**I
           R2B(I+2)=R1A(I+2)**J**KKK
           R2C(I)=R1A(I+3)+1
           R2C(I+1)=R1A(I+2)+1
           R2C(I+2)=R1A(I+2)+1*KKK
           R2D(I)=R1A(I+3)+1
           R2D(I+1)=R1A(I+2)+1
           R2D(I+2)=R1A(I+2)+1
120         CONTINUE

           DO 130 I=1,N
           B1A(I)=B1A(I)+B1B(I)
           IF(I.LE.96.AND.I.GT.50)  THEN
           R3A(I+2)=R1A(I+3)**INT(B1B(I))
           R3A(I+3)=R1A(I+3)**INT(B1B(I))+1
           R3B(I)=R1A(I+1)**KKK
           R3B(I+1)=R1A(I+2)**I
           R3B(I+2)=R1A(I+2)**I
           R3B(I+3)=R1A(I+2)+1
           R3C(I)=R1A(I+3)+1
           R3C(I+1)=R1A(I+2)+1
           R3C(I+2)=R1A(I+2)+1
           R3C(I+3)=R1A(I+2)+1
           R3D(I)=R1A(I+3)**KKK
           R3D(I+1)=R1A(I+2)+1
           R3D(I+2)=R1A(I+2)+1
           R3D(I+3)=R1A(I+2)+1
           ENDIF
130         CONTINUE

           DO 140 I=1,N-20,2
           R4A(I)=R1A(I+1)+1
           R4A(I+1)=R1A(I+2)+1
           R4A(I+2)=R1A(I+3)**KKK
           R4A(I+3)=R1A(I+3)**I
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
