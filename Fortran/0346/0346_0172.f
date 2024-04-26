          S1 = 0.
          S2 = 0.
          DO 1111 I = 1,300
              S1 = S1 + I
              IF( I .LE. 200 ) THEN
                 S2 = S2 + I
              ENDIF
              S3 = S1 + S2
 1111     CONTINUE
          PRINT *,S1,S2,S3
          STOP
          END
