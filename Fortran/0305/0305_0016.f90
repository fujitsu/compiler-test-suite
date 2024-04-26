      REAL*4 SCR1A(2048),SCR3A(2048)
      REAL*4 SCR4A(2048),SCR4B(2048)
      DATA SCR1A/2048*1/,SCR3A/2048*1/
      DATA SCR4A/2048*1/,SCR4B/2048*1/

      IF(.TRUE.) THEN
         SCR3A(1)=SCR1A(1)+1
         SCR3A(2)=SCR1A(2)+1
      ENDIF

      DO J=1,1
         DO I=170,370
            SCR4A(I)  =SCR1A(I+1)+1
            SCR4A(I+1)=SCR1A(I+2)+1
            SCR4A(I+2)=SCR1A(I+2)+1

            SCR4B(I)  =SCR1A(I+1)+1
            SCR4B(I+1)=SCR1A(I+2)+1
            SCR4B(I+2)=SCR1A(I+2)+1
         END DO
         SCR4A(1)=SCR4A(1)+SCR1A(1)
         SCR3A(1)=SCR3A(1)+SCR1A(1)
      END DO

      DO I=2,2048
         SCR4A(1)=SCR4A(1)+SCR4A(I)
         SCR4B(1)=SCR4B(1)+SCR4B(I)
      END DO

      if (SCR4A(1) .eq. 2252.00000 .and. SCR4B(1) .eq. 2251.00000) then
        WRITE(6,*) "OK"
      else
        WRITE(6,*) "NG"
      endif

      STOP
      END
