        CHARACTER*2 R/'xx'/
        LOGICAL L/.false./
        k=0
        IF( (R  == "At" .OR. &
     &       R  == "Co") .AND. &
     &      L                                   ) THEN
         k=1
        END IF
        if (k/=0)print *,'error'
        print *,'pass'
        END
