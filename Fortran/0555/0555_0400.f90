program main 
      implicit none
        type ty
            integer(kind=8) :: i
            integer(kind=8) :: ii
        end type
        type, extends(ty)   :: ty1
            integer(kind=8) :: j
            integer(kind=8) :: jj
        end type
 
        type conArr
            integer :: ty_int
            class(ty), pointer :: ty_class(:,:)
        end type
 
        type(conArr) :: obj_conArr
        type(ty1), target :: tar_arr_ty1(3,3)
        tar_arr_ty1%i = 1
        obj_conArr = conArr(3, tar_arr_ty1)

        obj_conArr%ty_class(2,2)%i = 2
        if(sizeof(obj_conArr%ty_class) .NE. 288) then
            print*,'Fail'
        else
            print*,'Pass'
        end if
end program
