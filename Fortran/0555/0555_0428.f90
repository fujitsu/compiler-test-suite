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
            class(ty), allocatable :: ty_class(:,:)
            integer :: ty_int
        end type
 
        type(conArr) :: obj_conArr
        call sub(obj_conArr, 4)
        if(obj_conArr%ty_class(2,2)%i .NE. 4) then
            print*,'Fail1'
        else
            print*,'Pass1'
        end if
        if(sizeof(obj_conArr%ty_class) .NE. 288) then
            print*,'Fail2'
        else
            print*,'Pass2'
        end if

        contains

        subroutine sub(dmy, num)
          type(conArr) :: dmy
          integer  :: num
          dmy  = conArr(fun_class_arr_ptr(), num)
          dmy%ty_class(2,2)%i = num
        end subroutine


        function fun_class_arr_ptr()
          class(ty), pointer :: fun_class_arr_ptr(:,:)
          allocate( ty1::fun_class_arr_ptr(3,3) )
          fun_class_arr_ptr%i = 1
        end function

end program 
