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
        allocate(obj_conArr%ty_class(2,3,2))

        obj_conArr = conArr(2,fun_type_arr_ptr(), 3)
        obj_conArr%ty_class(2,2,2)%i = 4
        if(sizeof(obj_conArr%ty_class(1,:,:)) .NE. 288)  then
            print*,'Fail2'
        else
            print*,'Pass2'
        end if
        contains

        function fun_type_arr_ptr()
          type(ty1), pointer :: fun_type_arr_ptr(:,:,:)
          allocate( fun_type_arr_ptr(3,3,3) )
          fun_type_arr_ptr%i = 1
          if (same_type_as(obj_conArr%ty_class, fun_type_arr_ptr) .EQV. .FALSE.) then
              print*,'Pass1'
          else
              print*, 'Fail1'
          end if
        end function

end program 
