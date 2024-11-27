        type ty
         character(:),allocatable :: ch
        end type

        type(ty),target :: obj
        class(*),pointer :: cptr
         cptr=>obj%ch
        print *,'pass'
        end
