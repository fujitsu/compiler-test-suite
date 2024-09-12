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
            class(ty), allocatable :: ty_class(:,:)
            integer :: ty_int
            integer :: ty_int1
        end type
 
        type(conArr) :: obj_conArr
        class(ty), pointer :: class_arr_ty(:,:)

        class_arr_ty => fun_type_arr_ptr()
        obj_conArr = conArr(class_arr_ty, 5, 7)
        obj_conArr%ty_class(2,2)%i = 6
        if(obj_conArr%ty_class(2,2)%i .NE. 6) then
            print*,'Fail1'
        else
            print*,'Pass1'
        end if
        if(sizeof(obj_conArr%ty_class) .NE. 288) then
            print*,'Fail2'
        else
            print*,'Pass2'
        end if
        contains
        function fun_type_arr_ptr()
          type(ty1), pointer :: fun_type_arr_ptr(:,:)
          allocate( fun_type_arr_ptr(3,3) )
          fun_type_arr_ptr%i = 1
        end function

end program
