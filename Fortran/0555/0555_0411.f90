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
            class(ty), pointer :: ty_class(:,:,:)
            integer :: ty_int1
        end type
 
        type(conArr) :: obj_conArr
        allocate(obj_conArr%ty_class(2,3,1))

        obj_conArr = conArr(8, fun_class_arr_ptr(), 9)
        obj_conArr%ty_class(2,2,2)%i = 10 
        if(obj_conArr%ty_int1 .NE. 9) then
            print*,'Fail2'
        else
            print*,'Pass2'
        end if
        contains

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
