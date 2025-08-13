        CHARACTER*2 R
        LOGICAL L
        write(15,*) "'xx'",.false.
        rewind 15
        read(15,*) R,L
        k=0
        IF( (R  == "At" .OR. &
     &       R  == "Co") .AND. &
     &      L                                   ) THEN
         k=1
        END IF
        if (k/=0)print *,'error'
        print *,'pass'
        END
