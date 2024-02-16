type ty
        complex :: cc 
        end type
        type(ty),parameter :: obj(2) =[ty((2,3)),ty((1,2))]

        complex :: cc(2,2) = (3,4) 

        if(is_contiguous(cc(1,:)%re) .neqv. .FALSE. )print*,101
        if(is_contiguous(obj%cc%re) .neqv. .FALSE. )print*,101
        print*,"PASS"
        end

