        complex(kind=16) :: cc(2,3) = (2,3)

        if(IS_CONTIGUOUS(cc(1,1)%re) .neqv. .FALSE. )print*,101
        print*,"PASS"
        end

