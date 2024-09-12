      PROGRAM MAIN
      INTEGER F(1,1)/1/,A(1)/3/
      F(1::2,:) = F(:1:A(1)-(1),:)+3
      IF(F(1,1).EQ.4) THEN
         PRINT*, '*** ok ***'
      ELSE
         PRINT*, '*** ng ***'
      END IF
      END
