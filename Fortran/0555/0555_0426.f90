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
        call sub(fun_class_arr_ptr())

        contains

        subroutine sub(dmy)
          class(ty), pointer  :: dmy(:,:)
          obj_conArr = conArr(dmy, 9)
          obj_conArr%ty_class(2,2)%i = 10 
          if(obj_conArr%ty_int .NE. 9) then
              print*,'Fail1'
          else
              print*,'Pass1'
          end if
          if (same_type_as(obj_conArr%ty_class, dmy) .EQV. .TRUE.) then
              print*,'Pass2'
          else
              print*, 'Fail2'
          end if
        end subroutine


        function fun_class_arr_ptr()
          class(ty), pointer :: fun_class_arr_ptr(:,:)
          allocate( ty1::fun_class_arr_ptr(3,3) )
          fun_class_arr_ptr%i = 1
        end function

end program 
