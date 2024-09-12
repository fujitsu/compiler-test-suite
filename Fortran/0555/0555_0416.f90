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

        type(conArr) :: obj_conArr
        type(ty1), target  :: tar_arr_ty1(3,3)
        allocate(obj_conArr%ty_class(2,3))
        tar_arr_ty1%i = 1
        if (same_type_as(obj_conArr%ty_class, tar_arr_ty1) .EQV. .FALSE.) then
            print*,'Pass1'
        else
            print*, 'Fail1'
        end if
        obj_conArr = conArr(2, tar_arr_ty1, 4)
        obj_conArr%ty_class(2,2)%i = 2
        if (same_type_as(obj_conArr%ty_class, tar_arr_ty1) .EQV. .TRUE.) then
            print*,'Pass2'
        else
            print*,'Fail2'
        end if
end program 
