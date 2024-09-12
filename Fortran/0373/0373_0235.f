        integer ZZZZ,IMAXZ
        integer*4 AZ1(1200),b(10)
        logical l(1200)/1200*.true./
        DATA AZ1/1200*1/

          ZZZZ = 0.0
          AZ1(14) = 7.0D0
          NN = 1025
          DO 10 J = 1 , 1
            DO 10 I = 1 , NN ,J
              IF( AZ1(I) .GT.  ZZZZ) THEN
                ZZZZ = AZ1(I)
                IMAXZ = I
              ENDIF
              if (l(i)) b(4) = j
 10     CONTINUE
        PRINT *,ZZZZ,IMAXZ
        END
