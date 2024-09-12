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
            class(ty), pointer :: ty_class(:,:,:)
            integer :: ty_int
        end type
 
        type(conArr) :: obj_conArr
        allocate(obj_conArr%ty_class(2,3,2))
        call sub(obj_conArr, 4)

        contains

        subroutine sub(dmy, num)
          type(conArr) :: dmy
          integer  :: num
          dmy  = conArr(fun_class_arr_ptr(), num)
          dmy%ty_class(2,2,2)%i = num
          if(sizeof(obj_conArr%ty_class(1,1,:)) .NE. 96) then
              print*,'Fail2'
          else
              print*,'Pass2'
          end if
        end subroutine


        function fun_class_arr_ptr()
          class(ty), pointer :: fun_class_arr_ptr(:,:,:)
          allocate( ty1::fun_class_arr_ptr(3,3,3) )
          fun_class_arr_ptr%i = 1
          if (same_type_as(obj_conArr%ty_class, fun_class_arr_ptr) .EQV. .FALSE.) then
              print*,'Pass1'
          else
              print*, 'Fail1'
          end if
        end function

end program 
