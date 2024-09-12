          INTEGER*4 A(100)/100*5/,Q,B(100)/100*1/
          COMMON /BLK/ V1,V2,V3,V4,V5,N
          INTEGER*4 V1(100),V2(100),V3(100),V4(100),V5(100),S(100)
          EQUIVALENCE (V3(1),S(1))
          DO 10 I = 1,100
            IF(N.GT.10) THEN
             IF(V1(I).GT.I) THEN
               A(I) = V1(I)
             ENDIF
             IF(V1(I).GT.I.AND.V2(I).LE.I) THEN
               A(I) = V1(I) + V2(I) + S(I) + V3(I)
             ELSEIF(V2(I).GE.I) THEN
               A(I) = S(I) + V3(I)
             ENDIF
             ENDIF
   10     CONTINUE
          DO 20 I =1,100,2
            A(I) = V1(I)*2
            B(I) = V2(I)*3
            IF(V3(1).LT.10) THEN
              V4(I) = V1(I)**V1(I)
              V5(I) = V2(I)**V2(I)
            ELSE
              A(I) = V1(I)**V2(I)
            ENDIF
   20     CONTINUE
          DO 30 I = 51,100,3
            IF(I.GT.75) THEN
              Q = I
              A(I) = S(I)
              B(I) = V3(I)+V1(I)+V2(I)
              IF(N.GT.0) THEN
                A(I) = V3(I)+V1(I)
                IF(Q.GT.85) THEN
                 IF(Q.GT.86) THEN
                  IF(Q.GT.87) THEN
                   IF(Q.GT.88) THEN
                    IF(Q.GT.89) THEN
                     IF(Q.GT.90) THEN
                     IF(Q.GT.90) THEN
                       B(I)=90
                       ENDIF
                       Q=90
                       ENDIF
                     Q=89
                    ENDIF
                    Q=88
                   ENDIF
                    Q=87
                  ENDIF
                   Q=86
                 ENDIF
                  Q=85
                ENDIF
               S(I) = S(I)**MAX0(S(I),2)
              ENDIF
            ENDIF
   30     CONTINUE
          WRITE(6,*) A,B,Q,V1,V2,V3,V4,V5,N,S,V3(5)
          STOP
          END
          BLOCK DATA
          COMMON /BLK/V1,V2,V3,V4,V5,N
          INTEGER*4 V1(100),V2(100),V3(100),V4(100),V5(100),N
          DATA V1/10*1,10*2,10*3,10*5,10*2,10*4,10*5,30*2/
          DATA V2/10*1,10*2,10*3,10*5,10*2,10*4,10*5,30*2/
          DATA V3/10*1,10*2,10*3,10*5,10*2,10*4,10*5,30*2/
          DATA V4/10*1,10*2,10*3,10*5,10*2,10*4,10*5,30*2/
          DATA V5/10*1,10*2,10*3,10*5,10*2,10*4,10*5,30*2/
          DATA N/10/
          END
