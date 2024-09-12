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
            integer(kind=8)  :: ty_int
        end type

        type(ty1), target  :: tar_ty1(3)
        type(con) :: obj
        tar_ty1%i = 2

        call sub(tar_ty1)
        if( obj%ty_class%i .NE. 4) then
            print*, "fail"
        else
            print*, "pass"
        endif 

        contains
        subroutine sub(dmy)
            type(ty1), target :: dmy(:)
            obj = con(dmy(2), 5)
            obj%ty_class%i = 4
        end subroutine
end program 