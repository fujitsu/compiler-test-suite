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
            class(ty), allocatable :: ty_class(:,:)
            integer :: ty_int
        end type
 
        type(conArr) :: obj_conArr
        type(ty1), target :: tar_arr_ty(3,3)
        tar_arr_ty%i = 3

        call sub_poly_ptr(tar_arr_ty)

        contains

        subroutine sub_poly_ptr(dmy_class_arr_ptr)
            type(ty1), target :: dmy_class_arr_ptr(:,:)
            obj_conArr = conArr(dmy_class_arr_ptr, 7)
            obj_conArr%ty_class(2,2)%i = 8
            if(sizeof(obj_conArr%ty_class(1,:)) .NE. 96) then
                print*,'Fail1'
            else
                print*,'Pass1'
            end if
            if (same_type_as(obj_conArr%ty_class, dmy_class_arr_ptr) .EQV. .TRUE.) then
                print*,'Pass2'
            else
                print*, 'Fail2'
            end if
        end subroutine sub_poly_ptr


end program
