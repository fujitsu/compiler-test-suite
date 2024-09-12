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
            integer  :: ty_int
        end type
        type(con) :: obj

        obj= con (fun_poly_ptr(), 7)
        obj%ty_class%i = 17
        if(sizeof(obj%ty_class) .NE. 16) then
            print*,'Fail'
        else
            print*,'Pass'
        end if

        contains
        function fun_poly_ptr()
            class(ty), pointer :: fun_poly_ptr

            allocate(fun_poly_ptr)
            fun_poly_ptr%i = 1
        end function

end program 
