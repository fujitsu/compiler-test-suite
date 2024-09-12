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
            class(ty), pointer :: ty_class(:,:,:)
            integer :: ty_int1
        end type
        type(conArr) :: obj_conArr
        class(ty), pointer :: class_arr_ty(:,:,:)
        allocate(ty1::class_arr_ty(3,3,3))
        class_arr_ty%i = 3
        call sub_poly(class_arr_ty)
        if (same_type_as(obj_conArr%ty_class, class_arr_ty) .EQV. .FALSE.) then
            print*,'Fail2'
        else
            print*, 'Pass2'
        end if
        contains
 
        subroutine sub_poly(dmy_class_arr)
            class(ty), target :: dmy_class_arr(:,:,:)
            obj_conArr = conArr(8,dmy_class_arr, 7)
            obj_conArr%ty_class(2,2,2)%i = 9
            if(obj_conArr%ty_int .NE. 8) then
                print*,'Fail1'
            else
                print*,'Pass1'
            end if
        end subroutine

end program 
