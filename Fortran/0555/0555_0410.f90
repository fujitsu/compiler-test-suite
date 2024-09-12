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
            class(*), pointer :: ty_class(:,:,:)
            integer :: ty_int1
        end type
 
        type(conArr) :: obj_conArr
        call sub(fun_class_arr_ptr())

        contains

        subroutine sub(dmy)
          class(ty), pointer  :: dmy(:,:,:)
          obj_conArr = conArr(8,dmy, 9)
          if(sizeof(obj_conArr%ty_class(1,1,:)) .NE. 96 ) then
              print*,'Fail'
          else
              print*,'Pass'
          end if
        end subroutine


        function fun_class_arr_ptr()
          class(ty), pointer :: fun_class_arr_ptr(:,:,:)
          allocate( ty1::fun_class_arr_ptr(3,3,3) )
          fun_class_arr_ptr%i = 1
        end function

end program 
