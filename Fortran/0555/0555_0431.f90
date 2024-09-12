program main 
        implicit none
        type ty
            integer(kind=8) :: i
            integer(kind=8) :: ii
        end type
        type, extends(ty)   :: ty1
            integer(kind=8) :: j
            integer(kind=8) :: jj
        end type
 
        type con
            class(ty), allocatable :: ty_class
            integer :: ii
        end type

        type(con) :: obj
        obj = con(NULL(),4)
        if(obj%ii .NE. 4) then
            print*,'Fail'
        else
            print*,'Pass'
        end if

end program
