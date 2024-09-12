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

        class(ty), pointer :: class_ty
        type(con) :: obj
        allocate(class_ty)
        class_ty%i = 1

        call sub_poly_ptr(class_ty)

        contains

        subroutine sub_poly_ptr(dmy_class_ptr)
            class(ty), pointer :: dmy_class_ptr

            obj = con(dmy_class_ptr, 5)
            obj%ty_class%i = 13
            if(sizeof(obj%ty_class) .NE. 16) then
                print*,'Fail'
            else
                print*,'Pass'
            end if
        end subroutine sub_poly_ptr

end program 
