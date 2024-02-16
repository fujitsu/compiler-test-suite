type ty
        complex :: cc(2,3) = (2,3)
        end type
        type(ty) :: obj

        complex :: cc(2,3) = (2,3)

        if(is_contiguous(cc%re) .neqv. .FALSE. )print*,101
        if(is_contiguous(obj%cc%re) .neqv. .FALSE. )print*,101
        print*,"PASS"
        end

