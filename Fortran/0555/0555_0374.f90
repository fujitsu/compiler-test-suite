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
       type con
           class(ty), pointer :: ty_class
           integer  :: ty_int
       end type

       type(ty1), target  :: tar_arr_ty1(3)
       type(con) :: obj
       tar_arr_ty1%i = 1
       obj = con(tar_arr_ty1(1), tar_arr_ty1(1)%i)
       obj%ty_class%i = 3

       if ( LOC(tar_arr_ty1) .EQ. LOC(obj%ty_class) ) then
          print*, "pass"
       else
          print*, "Fail"
       end if
end program
