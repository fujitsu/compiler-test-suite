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

    type con
        integer (kind=8) :: i
        class(*), pointer :: ulimClassPtr(:)
    end type

    type(con) :: objCon
    type(ty1), target :: tarTy1(3)

    tarTy1%i = 1;
    objCon = con(5, tarTy1)
    if(associated(objCon%ulimClassPtr) .EQV. .False.) then
        print*,'Fail'
    else
        print*,'Pass'
    endif
end program
