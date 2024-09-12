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
       type struct 
           type(ty1) :: tar_ty(3)
           integer(kind=8)  :: i
       end type
       type con
           class(ty), pointer :: ty_class
           integer(kind=8)  :: i
       end type

       type(con) :: obj
       type(struct), target  :: tar_struct

       tar_struct%tar_ty%i = 1
       tar_struct%i = 2
       obj = con( tar_struct%tar_ty(1), tar_struct%i )
       obj%ty_class%i = 3

       if(obj%i .NE. 2) then
            print*,'Fail'
       else
            print*,'Pass'
       end if
end program
