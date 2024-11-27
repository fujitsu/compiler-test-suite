module typeDef                                                     
    implicit none                                                  
    type TY
        integer(kind=8) :: i = 1                                   
        integer(kind=8) :: ii = 2                                  
    end type
    type, extends(TY)   :: ty1 
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
    class(*), allocatable :: ulimClassPtr(:,:)
end type

class(*), pointer :: ptrTy1(:,:)
class(*), allocatable :: ptrTy2(:,:)
type(con) :: objCon

allocate(TY::ptrTy1(3,3))
select type(ptrTy1)
TYPE IS(TY)
ptrTy1%i = 10
ptrTy1(1,1)%ii=5
end select

call sub(ptrTy1)
allocate(ptrTy2,source= objCon%ulimClassPtr)

select type (ptrTy2)
Type is (Integer )
Print *,"FAIL1"
TYPE IS(REAL)
Print *,"FAIL2"
TYPE Is(character(len=*))
Print *,"FAIL3"
TYPE IS(TY)
if(ptrTy2(3,3)%i /= 20)then
print *,"FAIL4",ptrTy2(3,3)%i
else if(ptrTy2(3,2)%ii /=100)then 
print *,"FAIL5",ptrTy2(3,2)%ii
else 
print *,"PASS"
endif
end select
contains
subroutine sub(dmyTy)
class(*), pointer :: dmyTy(:,:)
Select type(dmyTy)
Type Is(TY)
dmyTy(3,3)%i=20
dmyTy(3,1:3)%ii=100
end select
objCon = con(3, dmyTy)
end subroutine
end program
