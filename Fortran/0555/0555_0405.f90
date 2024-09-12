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
            class(ty), pointer :: ty_class(:,:,:)
        end type
 
        type(conArr) :: obj_conArr
        class(ty), pointer :: class_arr_ty(:,:,:)
        allocate(ty2::class_arr_ty(3,3,3))
        class_arr_ty%i = 3

        call sub_poly_ptr(class_arr_ty)

        contains

        subroutine sub_poly_ptr(dmy_class_arr_ptr)
            class(ty), pointer :: dmy_class_arr_ptr(:,:,:)
            obj_conArr = conArr(7, 8,dmy_class_arr_ptr)
            obj_conArr%ty_class(2,2,2)%i = 8
            if(obj_conArr%ty_int .NE. 7) then
                print*,'Fail'
            else
                print*,'Pass'
            end if
        end subroutine sub_poly_ptr

end program
