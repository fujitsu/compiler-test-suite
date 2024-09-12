          REAL*4 C23A(10)/10*1.0/,C23B(10)/10*2.0/,CA23C(10)
          INTEGER *4 CA23D(10)/1,2,3,4,5,6,7,8,9,10/,CA23E(10)/10*0/

          DO 10 I=1,10
            IF(CA23E(I).EQ.0) THEN
              CA23C(I)=FLOAT(CA23D(I))
              IF(CA23D(I).EQ.I) THEN
                CA23E(I) =INT(SIN(C23A(I)))**MIN0(5,CA23D(I))
              ENDIF
             C23B(I) =FLOAT(CA23D(I)**(MIN0(5,CA23D(I))+1)+1)
            ENDIF
   10     CONTINUE

          CALL C24
          WRITE(6,*) C23A,C23B,CA23C,CA23D,CA23E
          STOP
          END

          SUBROUTINE C24
          REAL*4 C24A(10),C24B(10),C24C(10)/10*0.5/
          LOGICAL*4 L24A(10),L24B(10),L24C(10)

          DO 10 I=1,10
            IF(C24C(I).EQ.0.5.AND.C24C(I).LT.1.0) THEN
              C24A(I) = FLOAT(I)
              C24B(I) = FLOAT(I+1)+FLOAT(INT(FLOAT(I)))
              L24A(I) = I.GT.5
              L24B(I) = I.LE.5.OR.I.EQ.10.OR.I.EQ.7
              L24C(I) = MOD(I,2).EQ.0
            ENDIF
   10     CONTINUE
          DO 20 J=1,3
          DO 20 I=1,10,2
            IF(C24A(I).EQ.FLOAT(I)) THEN
              C24A(I) = FLOAT(I)+1.0
              IF(L24B(I)) THEN
                C24A(I) = FLOAT(J)+C24A(I)
                IF(L24C(I).OR.L24A(I)) THEN
                  C24B(I)=C24A(I)+C24C(I)+C24B(I)
                 IF(L24A(I).OR..NOT.L24C(I)) THEN
                   C24C(I) = C24B(I)+1.0
                 ENDIF
                ELSE IF(L24C(I).AND.L24A(I))THEN
                  C24B(I) = 1.0
               ENDIF
               ENDIF
             ENDIF
             IF(L24A(I).AND.L24B(I).AND..NOT.L24C(I)) THEN
               IF(I.LE.5) THEN
                 C24A(I)=SIN(MIN(C24B(I),0.5))
               ENDIF
               C24A(I) = C24A(I) + 1.0 +J
             ENDIF
   20     CONTINUE
          WRITE(6,*) C24A,C24B,C24C,L24A,L24B,L24C
          RETURN
          END
