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
            integer ::  i
            integer ::  ii
        end type

        type(conArr) :: obj_conArr

        obj_conArr = conArr(NULL(),6 ,8)
        if(obj_conArr%i .NE. 6) then
            print*,'Fail'
        else
            print*,'Pass'
        end if
end program 
