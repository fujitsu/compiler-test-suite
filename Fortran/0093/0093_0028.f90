        complex :: cc(2,2) = (3,4) 

        if(is_contiguous(cc(1,:)%re) .neqv. .FALSE. )print*,101
        print*,"PASS"
        end

