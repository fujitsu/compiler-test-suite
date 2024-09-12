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
    end type
    
    type(ty1), target  :: tar_ty1
    type(con) :: obj
    
    tar_ty1%i = 0
    obj = con(tar_ty1)
    obj%ty_class%i = 1
   
    if ( LOC(tar_ty1) .EQ. LOC(obj%ty_class) ) then
        print*, "pass"
    end if

end program 
