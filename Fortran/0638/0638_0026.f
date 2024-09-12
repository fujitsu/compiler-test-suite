          REAL*4 A(1024),B(1024),C(1024)/1024*5.0/,D(1024,2),E(20)
          DATA E/20*0.5/
          DO 100 J=1,2
          DO 10 I=1,1024
            A(I)=1.0
            B(I)=1.0+A(I)
            D(I,J)=1.0+A(I)+B(I)
   10     CONTINUE
          DO 20 I=10,20,2
            D(I,J) = E(I)+B(I)+C(I)/5.0
            B(I)   = E(I)+B(I)
            E(I)   = E(I)
   20     CONTINUE
          DO 30 I=20,1024
            IF(I.GT.21) THEN
              B(I)=I +B(1)
              IF(B(1).LE.10.0) THEN
               B(I)=I+B(1)
               IF(B(1).LE.5.5) THEN
                B(I)=I+B(1)
                IF(I.GT.22) THEN
                 B(I)=I+B(1)
                 IF(I.GT.23) THEN
                  B(I)=I+B(1)
                  IF(I.GT.24) THEN
                   B(I)=I+B(1)
                   IF(I.GT.25) THEN
                    B(I)=I+B(1)
                     IF(I.GT.26) THEN
                     B(I)=I+B(1)
                     IF(I.GT.27) THEN
                      B(I)=I+B(1)
                      IF(I.GT.28) THEN
                       B(I)=I+B(1)
                       IF(I.GT.29) THEN
                        B(I)=I+B(1)
                        IF(I.GT.30) THEN
                         B(I)=I+B(I)
                         IF(I.GT.31) THEN
                          B(I)=I+B(I)
                          IF(I.GT.32) THEN
                           B(I)=I+B(I)
                           IF(I.GT.33) THEN
                            B(I)=I+B(1)
                            IF(I.GT.34) THEN
                             B(I)=I+B(1)+1.0
                             IF(I.GT.35) THEN
                              B(I)=I+B(1)+1.0
                              IF(I.GT.36) THEN
                               B(I)=I+B(1)+1.0
                               IF(I.GT.37) THEN
                                B(I)=I+B(1)
                                IF(I.GT.38) THEN
                                 B(I)=I+B(I)+1.0
                                 IF(I.GT.39.OR.B(1).LE.2.0) THEN
                                  B(I)=I+B(I)+B(1)+1.0
                                 ENDIF
                                ENDIF
                               ENDIF
                              ENDIF
                             ENDIF
                            ENDIF
                           ENDIF
                          ENDIF
                         ENDIF
                        ENDIF
                       ENDIF
                      ENDIF
                     ENDIF
                    ENDIF
                   ENDIF
                  ENDIF
                 ENDIF
                ENDIF
               ENDIF
              ENDIF
             ENDIF
   30     CONTINUE
  100     CONTINUE
          WRITE(6,*) A,B,C,D,E
          STOP
          END
