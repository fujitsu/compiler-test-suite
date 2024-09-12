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
            class(ty), allocatable :: ty_class(:,:)
            integer :: ty_int1
        end type

        type struct
            type(ty1)  :: ptr_arr_ty1(3,3)
            class(struct), pointer :: ptr_struct
        end type
        type(struct), target  :: obj_struct
        type(conArr) :: obj_conArr

        obj_struct%ptr_arr_ty1%i = 3
        obj_struct%ptr_struct => obj_struct
        obj_struct%ptr_struct%ptr_struct => obj_struct
        if (same_type_as(obj_conArr%ty_class, obj_struct%ptr_arr_ty1) .EQV. .FALSE.) then
            print*,'Pass1'
        else
            print*, 'Fail1'
        end if
        obj_conArr = conArr(3, obj_struct%ptr_struct%ptr_struct%ptr_arr_ty1, 4)
        obj_conArr%ty_class(2,2)%i = 5
        if(obj_conArr%ty_int1 .NE. 4) then
            print*,'Fail2'
        else
            print*,'Pass2'
        end if
end program 
