module typeDef
    implicit none
    type ty
        integer(kind=8) :: i = 1
        integer(kind=8) :: ii = 2
    end type
    type, extends(ty)   :: ty1
        integer(kind=8) :: j = 3
        integer(kind=8) :: jj = 4
    end type
    type, extends(ty1)  :: ty2
        integer(kind=8) :: k  = 5
        integer(kind=8) :: kk = 6
    end type
end module

program main 
        use typeDef
        implicit none
        type con
            class(ty), pointer :: ty_class
            integer  :: ty_int
        end type
 
        type(con) :: obj
        type(ty1), target :: tar
        tar%i = 3
        call sub(tar)
        obj%ty_class%i = 6
        if(obj%ty_class%i .NE. 6) then
            print*,'Fail'
        else
            print*,'Pass'
        end if
        contains
        subroutine sub(dmy)
            class(ty), target :: dmy
            obj = con(dmy, 5)
        end subroutine

end program 
