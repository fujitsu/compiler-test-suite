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
            integer :: ty_int1
            class(ty), allocatable :: ty_class(:,:)
        end type

        type(ty1), allocatable :: alloc_arr_ty1(:,:)
        type(conArr) :: obj_conArr

        allocate(alloc_arr_ty1,SOURCE=fun_type_arr_alloc())

        obj_conArr = conArr(3, 4, alloc_arr_ty1)
        obj_conArr%ty_class(2,2)%i = 3
        if(obj_conArr%ty_class(2,2)%i .NE. 3) then
            print*,'Fail'
        else
            print*,'Pass'
        end if

       contains

       function fun_type_arr_alloc()
         type(ty1), allocatable :: fun_type_arr_alloc(:,:)
         allocate( fun_type_arr_alloc(3,3) )
         fun_type_arr_alloc%i = 1
       end function
end program 
