        complex :: cc = (2,3)
        
        if(IS_CONTIGUOUS(cc%re) .neqv. .FALSE. )print*,101
        print*,"PASS"
        end

