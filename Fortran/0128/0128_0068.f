       INTEGER Q
      J=0
      XX1:DO 20,I=0,10
      J=J+1
      IF(J.eq.0)THEN
         CYCLE
      ELSE
         EXIT
      ENDIF
 20   END DO XX1

      IF(J.eq.1)THEN
         print *,'ok'
      ELSE
         print *,'ng'
      ENDIF
      
      XX2:DO 30,I=0,10
      J=J+1
      IF(J.eq.0)THEN
         CYCLE
      ELSE
         IF(J.eq.1)THEN
            CYCLE
         ELSE
            EXIT
         ENDIF
      ENDIF
 30   END DO XX2

      IF(J.eq.2)THEN
         print *,'ok'
      ELSE
         print *,'ng'
      ENDIF
      
      J=0
      VVV:DO 10,I=0,10
      J=J+1
      IF(J.eq.0)THEN
         CYCLE
      ELSE
         IF(J.eq.1)THEN
            CYCLE
         ELSE
            IF(J.eq.2)THEN
               CYCLE
            ELSE
               IF(J.eq.3)THEN
                  CYCLE
               ELSE
                  IF(J.eq.4)THEN
                     CYCLE
                  ELSE
                     IF(J.eq.5)THEN
                        CYCLE
                     ELSE
                        IF(J.eq.6)THEN
                           CYCLE
                        ELSE
                           IF(J.eq.7)THEN
                              CYCLE
                           ELSE
                              IF(J.eq.8)THEN
                                 CYCLE
                              ELSE
                                 IF(J.eq.9)THEN
                                    CYCLE
                                 ELSE
                                    IF(J.eq.10)THEN
                                       CYCLE
                                    ELSE
                                       IF(J.eq.11)THEN
                                          CYCLE
                                       ELSE
                                          IF(J.eq.0)THEN
                                             CYCLE
                                          ELSE
                                             EXIT
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
 10   END DO VVV

      IF(J.eq.11)THEN
         print *,'ok'
      ELSE
         print *,'ng'
      ENDIF
      
      J=0
      Q=0
      VV2:DO 40,I=0,10
      J=J+1
      IF(J.eq.0)THEN
         Q=Q+1
         CYCLE
      ELSE
         IF(J.eq.1)THEN
            Q=Q+1
            GOTO 40
         ELSE
            IF(J.eq.2)THEN
               Q=Q+1
               CYCLE
            ELSE
               IF(J.eq.3)THEN
                  Q=Q+1
                  CYCLE
               ELSE
                  IF(J.eq.4)THEN
                     Q=Q+1
                     GOTO 40
                  ELSE
                     IF(J.eq.5)THEN
                        Q=Q+1
                        CYCLE
                     ELSE
                        IF(J.eq.7)THEN
                           Q=Q+1
                           GOTO 40
                        ELSE
                           IF(J.eq.9)THEN
                              Q=Q+1
                              CYCLE
                           ELSE
                              IF(J.eq.10)THEN
                                 Q=Q+1
                                 GOTO 40
                              ELSE
                                 IF(J.eq.11)THEN
                                    Q=Q+1
                                    CYCLE
                                 ELSE
                                    IF(J.eq.0)THEN
                                       Q=Q+1
                                       CYCLE
                                    ELSE
                                       Q=Q+1
                                       EXIT
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
 40   END DO VV2
      IF((J.eq.6).and.(Q.eq.6))THEN
         print *,'ok'
      ELSE
         print *,'ng'
      ENDIF
      
      STOP
      END
