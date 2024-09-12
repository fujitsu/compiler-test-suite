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
            class(ty), pointer :: ty_class(:,:) => NULL()
            integer :: ty_int1
        end type
 
        type(conArr) :: obj_conArr
        type(ty1), target :: tar_arr_ty(3,3)
        tar_arr_ty%i = 3
        allocate(obj_conArr%ty_class(2,3))

        call sub_poly_ptr(tar_arr_ty)

        contains

        subroutine sub_poly_ptr(dmy_class_arr_ptr)
            type(ty1), target :: dmy_class_arr_ptr(:,:)
            if (same_type_as(obj_conArr%ty_class, dmy_class_arr_ptr) .EQV. .FALSE.) then
                print*,'Pass'
            else
                print*, 'Fail'
            end if
            obj_conArr = conArr(6,dmy_class_arr_ptr, 7)
            obj_conArr%ty_class(2,2)%i = 8
            if(obj_conArr%ty_class(2,2)%i .NE. 8) then
                print*,'Fail'
            else
                print*,'Pass'
            end if
        end subroutine sub_poly_ptr


end program
