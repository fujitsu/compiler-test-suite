         COMMON /BLK1/R1A,R1B,R1C,R1D
         COMMON /BLK2/R2A,R2B,R2C,R2D
         COMMON /BLK3/R3A,R3B,R3C,R3D
         COMMON /BLK4/R4A,R4B,R4C,R4D
         INTEGER*4 R1A(100),R1B(100),R1C(100),R1D(100)
         INTEGER*4 R2A(100),R2B(100),R2C(100),R2D(100)
         INTEGER*4 R3A(100),R3B(100),R3C(100),R3D(100)
         INTEGER*4 R4A(100),R4B(100),R4C(100),R4D(100)

           DO 40 J=1,2
           DO 10 I=1,50
           R1A(I)=R1A(I+1)+1
           R1A(I+1)=R1A(I+2)+1
           R1B(I)=R1A(I+1)+1
           R1B(I+1)=R1A(I+2)+1
           R1C(I)=R1A(I+1)+1
           R1C(I+1)=R1A(I+2)+1
           R1D(I)=R1A(I+1)+1
           R1D(I+1)=R1A(I+2)+1
10         CONTINUE
           DO 20 I=1,50
           R2A(I)=R1A(I+1)+1
           R2A(I+1)=R1A(I+2)+1
           R2A(I+2)=R1A(I+3)+1
           R2B(I)=R1A(I+1)+1
           R2B(I+1)=R1A(I+2)+1
           R2B(I+2)=R1A(I+2)+1
           R2C(I)=R1A(I+3)+1
           R2C(I+1)=R1A(I+2)+1
           R2C(I+2)=R1A(I+2)+1
           R2D(I)=R1A(I+3)+1
           R2D(I+1)=R1A(I+2)+1
           R2D(I+2)=R1A(I+2)+1
20         CONTINUE
           DO 30 I=1,50
           R3A(I)=R1A(I+1)+1
           R3A(I+1)=R1A(I+2)+1
           R3A(I+2)=R1A(I+3)+1
           R3A(I+3)=R1A(I+3)+1
           R3B(I)=R1A(I+1)+1
           R3B(I+1)=R1A(I+2)+1
           R3B(I+2)=R1A(I+2)+1
           R3B(I+3)=R1A(I+2)+1
           R3C(I)=R1A(I+3)+1
           R3C(I+1)=R1A(I+2)+1
           R3C(I+2)=R1A(I+2)+1
           R3C(I+3)=R1A(I+2)+1
           R3D(I)=R1A(I+3)+1
           R3D(I+1)=R1A(I+2)+1
           R3D(I+2)=R1A(I+2)+1
           R3D(I+3)=R1A(I+2)+1
30         CONTINUE
           DO 40 I=1,50,3
           R4A(I)=R1A(I+1)+1
           R4A(I+1)=R1A(I+2)+1
           R4A(I+2)=R1A(I+3)+1
           R4A(I+3)=R1A(I+3)+1
           R4A(I+4)=R1A(I+3)+1
           R4B(I)=R1A(I+1)+1
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
40         CONTINUE
           DO 140 J=1,2
           DO 110 I=40,80,J
           IF(J.EQ.1) THEN
           R1A(I)=R1A(I+1)+1
           R1A(I+1)=R1A(I+2)+1
           R1B(I)=R1A(I+1)+1
           R1B(I+1)=R1A(I+2)+1
           R1C(I)=R1A(I+1)+2
           R1C(I+1)=R1A(I+2)+2
           R1D(I)=R1A(I+1)+2
           R1D(I+1)=R1A(I+2)+2
           ELSE
           R1A(I)=R1A(I+1)+1
           R1A(I+1)=R1A(I+2)+1
           R1B(I)=R1A(I+1)+1
           R1B(I+1)=R1A(I+2)+1
           R1C(I)=R1A(I+1)+1
           R1C(I+1)=R1A(I+2)+1
           R1D(I)=R1A(I+1)+1
           R1D(I+1)=R1A(I+2)+1
           ENDIF
110         CONTINUE
           DO 120 I=40,80,2
           IF(J.EQ.2) THEN
           R2A(I)=R1A(I+1)+1
           R2A(I+1)=R1A(I+2)+1
           R2A(I+2)=R1A(I+3)+1
           R2B(I)=R1A(I+1)+1
           R2B(I+1)=R1A(I+2)**J+1
           R2B(I+2)=R1A(I+2)**J+1
           R2C(I)=R1A(I+3)**J+1
           R2C(I+1)=R1A(I+2)**J+1
           R2C(I+2)=R1A(I+2)**J+1
           R2D(I)=R1A(I+3)**J+1
           R2D(I+1)=R1A(I+2)**J+1
           R2D(I+2)=R1A(I+2)**J+1
           ELSE
           R2A(I)=R1A(I+1)**J+1
           R2A(I+1)=R1A(I+2)**J+1
           R2A(I+2)=R1A(I+3)**J+1
           R2B(I)=R1A(I+1)**J+1
           R2B(I+1)=R1A(I+2)**J+1
           R2B(I+2)=R1A(I+2)**J+1+J
           R2C(I)=R1A(I+3)**J+1
           R2C(I+1)=R1A(I+2)**J+1
           R2C(I+2)=R1A(I+2)**J+1
           R2D(I)=R1A(I+3)**J+1+J
           R2D(I+1)=R1A(I+2)**J+1
           R2D(I+2)=R1A(I+2)**J**J+1
           ENDIF
120        CONTINUE
           DO 130 I=1,50,J+1
           IF(J.EQ.1) THEN
           R3A(I)=R1A(I+1)+1
           R3A(I+1)=R1A(I+2)+1
           R3A(I+2)=R1A(I+3)+1
           R3A(I+3)=R1A(I+3)**J+1
           R3B(I)=R1A(I+1)+1
           R3B(I+1)=R1A(I+2)+1
           R3B(I+2)=R1A(I+2)+1
           R3B(I+3)=R1A(I+2)+1
           R3C(I)=R1A(I+3)+1
           R3C(I+1)=R1A(I+2)+1
           R3C(I+2)=R1A(I+2)+1
           R3C(I+3)=(R1A(I+2)+1)**J
           R3D(I)=R1A(I+3)+1
           R3D(I+1)=(R1A(I+2)+1)
           R3D(I+2)=R1A(I+2)+1
           R3D(I+3)=R1A(I+2)+1
           ELSE
           IS=0
           R3A(I)=R1A(I+1)+1
           R3A(I+1)=(R1A(I+2)+1)**J
           R3A(I+2)=R1A(I+3)+1
           R3A(I+3)=R1A(I+3)+1
           IF(I.GT.30) GOTO 1
           IS=IS+1
           R3B(I)=R1A(I+1)+1
2          R3B(I+1)=R1A(I+2)+1
           R3B(I+2)=R1A(I+2)+1
           IS=IS+1
1          R3B(I+3)=R1A(I+2)+1
           R3C(I)=R1A(I+3)+1
           IF(I.GT.40.AND.IS.LT.10) GOTO 2
           R3C(I+1)=R1A(I+2)+1
           R3C(I+2)=R1A(I+2)+1
           R3C(I+3)=R1A(I+2)+1
           R3D(I)=R1A(I+3)+1
           R3D(I+1)=R1A(I+2)+1
           R3D(I+2)=R1A(I+2)+1
           R3D(I+3)=R1A(I+2)+1
           ENDIF
130         CONTINUE
           DO 140 I=50,95,3
           IF(J.EQ.1.AND.I.GT.75) THEN
           R4A(I)=R4A(I+1)+1
           R4A(I+1)=R4A(I+2)+1
           R4A(I+2)=R4A(I+3)+1
           R4A(I+3)=R4A(I+3)+1
           R4A(I+4)=R1A(I+3)+1
           R4B(I)=R1A(I+1)+1
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
           ELSE
           R4A(I)=R1A(I+1)+1
           R4A(I+1)=R1A(I+2)+1
           R4A(I+2)=R1A(I+3)+1
           R4A(I+3)=R1A(I+3)+1
           R4A(I+4)=R1A(I+3)+1
           R4B(I)=R1A(I+1)+1
           R4B(I+1)=R1A(I+2)+1
           R4B(I+2)=R1A(I+2)+1
           R4B(I+3)=R1A(I+2)+1
           R4B(I+4)=R1A(I+2)+1
           R4C(I)=R1A(I+3)+1
           DO 14 K=1,40
           R4C(I+1)=R1A(K+2)+1
           R4C(I+2)=R1A(K+2)+1
           R4C(I+3)=R1A(I+2)+1
           R4C(I+4)=R1A(I+2)+1
14         CONTINUE
           R4D(I)=R1A(I+3)+1
           R4D(I+1)=R1A(I+2)+1
           ENDIF
           R4D(I+2)=R1A(I+2)+1
           R4D(I+3)=R1A(I+2)+1
           R3D(I+4)=R1A(I+2)+1
140         CONTINUE
         WRITE(6,999) R1A,R1B,R1C,R1D
         WRITE(6,999) R2A,R2B,R2C,R2D
         WRITE(6,999) R3A,R3B,R3C,R3D
         WRITE(6,999) R4A,R4B,R4C,R4D
  999    format(10g20.10)
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
