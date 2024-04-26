      INTEGER*4 I42(60)
      DATA      I42/60*0/
      DO 20 I=1,60
         IF( I .NE. 4 .AND.
     6       I .NE. 19 .AND. I .NE. 20 .AND. I .NE. 21 .AND.
     7       I .NE. 22 .AND. I .NE. 23 .AND. I .NE. 24 .AND.
     8       I .NE. 25 .AND. I .NE. 26 .AND. I .NE. 27 .AND.
     9       I .NE. 28 .AND. I .NE. 29 .AND. I .NE. 30 .AND.
     1       I .NE. 49 ) THEN

         I42(I)=I
      ELSE
      ENDIF
 20   CONTINUE
      if (i42(20) .eq. 0) then
         write(6,*) "ok"
      else
         write(6,*) "ng", i42
      endif
      END
