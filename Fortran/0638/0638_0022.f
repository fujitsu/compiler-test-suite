          REAL*4 SE1(10,10)/100*1.0/,SE2(10,10)/100*2.0/
          REAL*4 LE1(10,10),LE2(10,10),X/10.0/
          REAL*4 GE1(10),GE2(10),GE3(512)/512*2.0/,GE4(512)
          REAL*4 NE(10,10)/100*8.0/
          DO 10 J = 1,10
          DO 10 I = 1,10
            LE1(I,J) = SE1(I,J)*I+(J+5)
            LE2(I,J) = SE2(I,J)*J*X
            IF(X.GT.FLOAT(J+5)) THEN
             LE1(I,J)=SE2(I,J)*J*X
             LE2(I,J)=SE1(I,J)*I+(J+5)
            ENDIF
   10     CONTINUE
          X=LE1(1,5)
          DO 20 J=1,10,2
          DO 30 I=1,10
            GE1(I) = FLOAT(I)
            GE2(I) = FLOAT(I)+1.0
   30     CONTINUE
          DO 20 I=1,10,J
            IF(J.LE.5) THEN
              LE1(I,J) = I+X
              LE2(I,J) = I*2.0
            ELSE
              LE2(I,J) = I*2.0
              LE1(I,J) = I+X
            ENDIF
   20     CONTINUE
          X = 2.0
          DO 40 J=1,10,2
          DO 50 I=1,512
            GE4(I) = GE3(I)+X
   50     CONTINUE
          X=GE1(J)
          DO 40 I=1,10
            LE1(I,J) = X+LE1(I,J)+LE2(I,J)
            GE2(I)   = X+LE2(I,J)
            IF(X.GT.5.0) THEN
              NE(I,J)=X+LE2(I,J)+LE1(I,1)
            ELSE
              NE(I,J)=LE2(I,J)
            ENDIF
   40     CONTINUE
          WRITE(6,*) SE1,SE2,LE1,LE2,X,GE1,GE2,GE3,GE4,NE,X
          STOP
          END
