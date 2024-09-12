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
        type conArr
            integer :: ty_int
            integer :: ty_int1
            class(ty), pointer :: ty_class(:)
        end type
 
        type(conArr) :: obj_conArr
        type(ty1), pointer :: ptr_arr_ty1(:)

        ptr_arr_ty1 => fun_type_arr_ptr()
        obj_conArr = conArr(2, 3,ptr_arr_ty1)
        obj_conArr%ty_class(2)%i = 3
        if (same_type_as(obj_conArr%ty_class, ptr_arr_ty1) .EQV. .FALSE.) then
            print*,'Fail'
        else
            print*, 'Pass'
        end if
        if(sizeof(obj_conArr%ty_class) .NE. 96) then
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
