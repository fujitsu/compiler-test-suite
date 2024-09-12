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

        call sub_SC(obj)

        contains
        subroutine sub_SC(dmy_obj)
            type(con):: dmy_obj
            dmy_obj = con(fun_type_ptr(), 7)
            dmy_obj%ty_class%i = 17
            if(sizeof(obj%ty_class) .NE. 32) then
                print*,'Fail'
            else
                print*,'Pass'
            end if
        end subroutine

      function fun_type_ptr()
        type(ty1), pointer :: fun_type_ptr
        allocate(fun_type_ptr)
        fun_type_ptr%i = 1
      end function

end program 