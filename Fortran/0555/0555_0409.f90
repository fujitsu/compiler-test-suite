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
            class(ty), pointer :: ty_class(:,:,:)=>null()
            integer :: ty_int
            integer :: ty_int1
        end type

        type struct
            class(ty), pointer :: class_arr_ty(:,:,:)
            class(struct), pointer :: ptr_struct => NULL()
        end type

        type(struct), target  :: obj_struct
        type(conArr) :: obj_conArr

        obj_struct%class_arr_ty => fun_type_arr_ptr()
        obj_struct%ptr_struct => obj_struct

        obj_conArr = conArr(obj_struct%ptr_struct%ptr_struct%class_arr_ty, 6, 8)
        obj_conArr%ty_class(2,2,2)%i = 7
        if (same_type_as(obj_conArr%ty_class, obj_struct%class_arr_ty) .EQV. .True.)  then
            print*,'Pass2'
        else
            print*,'Fail2'
        end if
      contains

      function fun_type_arr_ptr()
        type(ty1), pointer :: fun_type_arr_ptr(:,:,:)
        allocate( fun_type_arr_ptr(3,3,3) )
        fun_type_arr_ptr%i = 1
        if(associated(obj_conArr%ty_class)) then
        if(sizeof(obj_conArr%ty_class(1,1,:)) .NE. 0 ) then
            print*,'Fail1'
        else
            print*,'Pass1'
        end if
        else
            print*,'Pass1'
        endif
      end function

end program 
