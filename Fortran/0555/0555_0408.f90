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
      use typeDEF
      implicit none
 
        type conArr
            integer :: ty_int
            integer :: ty_int1
            class(ty), pointer :: ty_class(:,:)
        end type
 
        type(conArr) :: obj_conArr
        class(ty), pointer :: class_arr_ty(:,:)

        class_arr_ty => fun_type_arr_ptr()
        obj_conArr = conArr(2, 3, class_arr_ty )
        obj_conArr%ty_class(2,2)%i = 6
        if ((same_type_as(obj_conArr%ty_class, class_arr_ty) .EQV. .True.) .AND. (sizeof(obj_conArr%ty_class) .EQ. 288)) then
            print*,'Pass'
        else
            print*, 'Fail'
        end if
        contains
        function fun_type_arr_ptr()
          type(ty1), pointer :: fun_type_arr_ptr(:,:)
          allocate( fun_type_arr_ptr(3,3) )
          fun_type_arr_ptr%i = 1
        end function

end program
