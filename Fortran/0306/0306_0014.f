      KNLON = 4500
      CALL SIGAM(KNLON)
      STOP
      END

      SUBROUTINE SIGAM(KNLON)
      DOUBLE PRECISION PSP(KNLON)
      DO JLON=1,KNLON
        DO JLEV=0,9
          PSP(JLON)=2.D0
        ENDDO
      ENDDO
      IF (PSP(1).EQ.2.D0) THEN
        PRINT*, "## OK ##"
      ELSE
        PRINT*, "## OK ##"
        PRINT*, PSP(1)
      ENDIF
      RETURN
      END
