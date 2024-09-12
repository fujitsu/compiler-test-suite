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
        use typedef
        implicit none

        type con
            class(ty), pointer :: ty_class => NULL()
            integer  :: ty_int
        end type

        type struct
            type(ty1), pointer :: ptr_arr_ty1(:) => NULL()
            class(struct), pointer :: ptr_struct => NULL()
        end type

        type(con) :: obj
        type(struct), target  :: obj_struct

        obj_struct%ptr_arr_ty1 => fun_type_arr_ptr()
        obj_struct%ptr_struct  => obj_struct

        obj = con(obj_struct%ptr_struct%ptr_struct%ptr_arr_ty1(1), 3)
        obj%ty_class%i = 8
        if(sizeof(obj%ty_class) .NE. 32) then
            print*,'Fail'
        else
            print*,'Pass'
        end if

        contains

        function fun_type_arr_ptr()
          type(ty1), pointer :: fun_type_arr_ptr(:)
          allocate( fun_type_arr_ptr(3) )
          fun_type_arr_ptr%i = 1
        end function
end program 
