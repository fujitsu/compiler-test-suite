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
            class(ty), allocatable :: ty_class(:,:)
            integer :: ty_int
        end type

        type(conArr) :: obj_conArr

            print*,'Pass1'

        obj_conArr = conArr(fun_type_arr_alloc(), 5)
        obj_conArr%ty_class(2,2)%i = 4
        if(sizeof(obj_conArr%ty_class) .NE. 288) then
            print*,'Fail2'
        else
            print*,'Pass2'
        end if

        contains

        function fun_type_arr_alloc()
          type(ty1), allocatable :: fun_type_arr_alloc(:,:)
          allocate( fun_type_arr_alloc(3,3) )
          fun_type_arr_alloc%i = 1
        end function

end program 
