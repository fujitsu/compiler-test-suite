        CHARACTER*2 R
        LOGICAL L
        write(1,*) "'xx'",.false.
        rewind 1
        read(1,*) R,L
        k=0
        IF( (R  == "At" .OR. &
     &       R  == "Co") .AND. &
     &      L                                   ) THEN
         k=1
        END IF
        if (k/=0)print *,'error'
        print *,'pass'
        END
