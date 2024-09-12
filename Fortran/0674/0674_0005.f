      PROGRAM MAIN
      CALL SUB(0,0,0,0,0,N)
      PRINT*,N
      STOP
      END

      SUBROUTINE SUB(I,J,K,L,M,N)
      IF( I.GT.0 ) THEN
        IF( J.GT.0 ) THEN
          N = 1
        ELSEIF( J.EQ.0 ) THEN
          N = 2
        ELSE
          N = 3
        ENDIF
      ELSE
        IF( K.EQ.0 ) THEN
          IF( L.EQ.0 ) THEN
            IF( M.EQ.0 ) THEN
              N = 5
            ENDIF
          ELSE
            N = 6
          ENDIF
        ELSE
          N = 7
        ENDIF
      ENDIF
      RETURN
      END
