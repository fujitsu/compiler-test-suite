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
            type(ty1), pointer :: ptr_ty1
        end type

        type(struct), target  :: obj_struct
        type(con) :: obj

        obj_struct%ptr_ty1=> fun_type_ptr()
        obj = con(obj_struct%ptr_ty1, 4)
        if(obj%ty_class%i .NE. 1) then
            print*,'Fail'
        else
            print*,'Pass'
        end if

        contains

        function fun_type_ptr()
          type(ty1), pointer :: fun_type_ptr
          allocate(fun_type_ptr)
          fun_type_ptr%i = 1
        end function
end program 
