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
            class(*), pointer :: ty_class
            integer :: ty_int
        end type

        type(ty1), target  :: tar_ty1
        type(con) :: obj
        tar_ty1%i = 2
        obj = con(tar_ty1, 5)
        if(sizeof(obj%ty_class) .NE. 32) then
            print*,'Fail'
        else
            print*,'Pass'
        end if

end program 
