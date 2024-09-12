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

        class(ty), pointer :: class_arr_ty(:)
        type(con) :: obj

        allocate(class_arr_ty(3))
        class_arr_ty%i = 2

        call sub_poly_ptr(class_arr_ty)

        contains

        subroutine sub_poly_ptr(dmy_class_arr_ptr)
            class(ty), pointer :: dmy_class_arr_ptr(:)

            obj = con(dmy_class_arr_ptr(1), 6)
            obj%ty_class%i = 14
            if(obj%ty_class%i .NE. 14) then
                print*,'Fail'
            else
                print*,'Pass'
            end if
        end subroutine sub_poly_ptr

end program 