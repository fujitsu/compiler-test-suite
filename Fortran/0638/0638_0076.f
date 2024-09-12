         COMMON /BLK1/R1A,R1B,R1C,R1D
         COMMON /BLK2/R2A,R2B,R2C,R2D
         COMMON /BLK3/R3A,R3B,R3C,R3D
         COMMON /BLK4/R4A,R4B,R4C,R4D
         INTEGER*4 R1A(100),R1B(100),R1C(100),R1D(100)
         INTEGER*4 R2A(100),R2B(100),R2C(100),R2D(100)
         INTEGER*4 R3A(100),R3B(100),R3C(100),R3D(100)
         INTEGER*4 R4A(100),R4B(100),R4C(100),R4D(100)

           IV=0
           ISUM=0
           IND=0
           DO 60 KKK=1,2,1
           DO 20 I=1,10
           ISUM=ISUM+R1B(I)
           IF(ISUM.LE.100) R1C(I)=R1B(ISUM)
           IF(R2A(I).GT.IV)  IV=R2A(I)
           IF(I.GT.IND)        IND=I
           IF(IND.GT.10)       IND=1
           R4A(I)=IV
           R4B(IND)=IV
           R4C(I)=IND
20         R4D(IND)=IND
           DO 21 I=1,10
           IF(R2A(I).LT.IV)  IV=R2A(I)
           IF(I.LT.IND)        IND=I
           R3A(I)=IV
           R3B(IND)=IV
           R3C(I)=IND
           R3D(IND)=IND
21         CONTINUE
           DO 30 I=20,100
             IND=IND+I
             IV=IV+1
             IF(IND.LT.100.AND.IV.LT.100) THEN
               R1A(IND)=0
               R1B(I)=0
               R1C(IV)=0
             ENDIF
30        CONTINUE
          DO 41 I=50,70
            IF(I.GE.60) THEN
              ISUM=ISUM+I
              R3A(I)=ISUM
            ENDIF
 41        CONTINUE
          DO 40 I=50,70
            IF(I.GE.60) THEN
              ISUM=ISUM+I
              R4A(I)=ISUM
            ELSE
              ISUM=ISUM+1
              R4A(I)=ISUM+IND
            ENDIF
 40        CONTINUE
60           CONTINUE
         WRITE(6,*) IV,IND,ISUM,R1A,R1B,R1C,R1D
         WRITE(6,*) R2A,R2B,R2C,R2D
         WRITE(6,*) R3A,R3B,R3C,R3D
         WRITE(6,*) R4A,R4B,R4C,R4D
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
