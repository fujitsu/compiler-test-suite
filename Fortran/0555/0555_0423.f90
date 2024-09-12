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
        class(ty), pointer :: class_arr_ty(:,:)
        allocate(ty1::class_arr_ty(3,3))
        class_arr_ty%i = 3
        call sub_poly(class_arr_ty)
        contains
 
        subroutine sub_poly(dmy_class_arr)
            class(ty), target :: dmy_class_arr(:,:)
            obj_conArr = conArr(dmy_class_arr, 8)
            obj_conArr%ty_class(2,2)%i = 9
            if(sizeof(obj_conArr%ty_class) .NE. 288) then
                print*,'Fail1'
            else
                print*,'Pass1'
            end if
            if (same_type_as(obj_conArr%ty_class, dmy_class_arr) .EQV. .TRUE.) then
                print*,'Pass2'
            else
                print*, 'Fail2'
            end if
        end subroutine

end program 
