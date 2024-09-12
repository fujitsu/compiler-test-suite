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
            integer :: ty_int
        end type

        type struct
            type(ty1) :: tar_arr_ty1(3)
            class(struct), pointer :: ptr_struct
        end type

        type(con) :: obj
        type(struct), target  :: obj_struct

        obj_struct%tar_arr_ty1%i = 4
        obj_struct%ptr_struct => obj_struct
        obj_struct%ptr_struct%ptr_struct => obj_struct

        obj = con(obj_struct%ptr_struct%ptr_struct%tar_arr_ty1(1), 4)
        if(sizeof(obj%ty_class) .NE. 32) then
            print*,'Fail'
        else
            print*,'Pass'
        end if

end program
