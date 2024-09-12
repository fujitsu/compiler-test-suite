          REAL*4 VA1(10),VA2(10)/10*1.0/
          REAL*8 VB1(10),VB2(10)/10*2.0/,VB3(10)/10*4.0/
          INTEGER*4 N/10/,VC1(10),VC2(10)/10*2/,VC3(10)/10*10/
          REAL*4 VD1(10),VD2(10)/10*2.0/
          DO 10 I=1,10
            IF(N.EQ.10) THEN
              VA1(I) = 0.0
            ELSE
              VA2(I)=VA2(I)+2.0
            ENDIF
   10     CONTINUE
          DO 20 J=1,2
            VA1(1) = J
            DO 20 I=1,10
              IF(VA1(2).EQ.1.0) THEN
                VB1(I) = VB2(I)+VB3(I)
              ELSE
                VB1(I) = VB2(I)+VB3(I)*2.0
              ENDIF
   20     CONTINUE
          DO 30 J=1,2
            VA1(J) = FLOAT(J)
            DO 30 I=1,10
              IF(VA1(1).EQ.1.0) THEN
                VC1(I)=VC3(I)*VA2(J)+VC3(I)+2
              ELSE
                VC2(I)=VC3(I)*VA2(J)+VC3(I)+2
              ENDIF
   30     CONTINUE
          DO 40 K=1,N
          DO 40 J=1,K
          DO 40 I=1,10
            IF(N.EQ.10) THEN
              VD1(I)=VD2(I)**2.0
            ELSE
              VD1(I)=VD2(I)**2.0+2.0
            ENDIF
   40     CONTINUE
          WRITE(6,*) N,VA1,VA2,VB1,VB2,VB3,VC1,VC2,VC3,VD1,VD2
          STOP
          END
