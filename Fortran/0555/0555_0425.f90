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
            class(ty), allocatable :: ty_class(:,:,:)
            integer :: ty_int
        end type

        type struct
            class(ty), pointer :: class_arr_ty(:,:,:) => NULL()
            class(struct), pointer :: ptr_struct => NULL()
        end type

        type(struct), target  :: obj_struct
        type(conArr) :: obj_conArr

        allocate(obj_conArr%ty_class(2,3,2))
        obj_struct%class_arr_ty => fun_type_arr_ptr()
        obj_struct%ptr_struct => obj_struct

        obj_conArr = conArr(obj_struct%ptr_struct%ptr_struct%class_arr_ty, 6)
        obj_conArr%ty_class(2,2,2)%i = 7
        if(obj_conArr%ty_class(2,2,2)%i .NE. 7) then
            print*,'Fail1'
        else
            print*,'Pass1'
        end if
        if(sizeof(obj_conArr%ty_class(1,:,:)) .NE. 288) then
            print*,'Fail2'
        else
            print*,'Pass2'
        end if
      contains

      function fun_type_arr_ptr()
        type(ty1), pointer :: fun_type_arr_ptr(:,:,:)
        allocate( fun_type_arr_ptr(3,3,3) )
        fun_type_arr_ptr%i = 1
      end function

end program 
