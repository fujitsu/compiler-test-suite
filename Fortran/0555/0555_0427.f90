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
            class(ty), allocatable :: ty_class(:)
            integer :: ty_int
        end type
 
        type(conArr) :: obj_conArr

        obj_conArr = conArr(fun_class_arr_ptr(), 9)
        obj_conArr%ty_class(2)%i = 10 
        if(sizeof(obj_conArr) .NE. 80) then
            print*,'Fail'
        else
            print*,'Pass'
        end if

        contains

        function fun_class_arr_ptr()
          class(ty), pointer :: fun_class_arr_ptr(:)
          allocate( ty1::fun_class_arr_ptr(3) )
          fun_class_arr_ptr%i = 1
        end function

end program 
