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
            class(ty), allocatable :: ty_class
            class(ty), allocatable :: ty_class1
            integer :: ty_int
        end type

        type(ty1), target :: tar_ty
        type(ty1), target :: tar_arr_ty(3)
        type(con) :: obj

        tar_ty%i = 3
        tar_arr_ty%i = 4

        call sub_poly_ptr(tar_ty, tar_arr_ty)
        if((obj%ty_class%i .NE. 13) .AND. (obj%ty_class1%i .NE. 14)) then
            print*,'Fail'
        else
            print*,'Pass'
        end if

        contains

        subroutine sub_poly_ptr(dmy_tar, dmy_tar_arr)
            type(ty1), target :: dmy_tar
            type(ty1), target :: dmy_tar_arr(:)

            obj = con(dmy_tar, dmy_tar_arr(1), 6)
            obj%ty_class%i = 13
            obj%ty_class1%i = 14
        end subroutine sub_poly_ptr

end program
