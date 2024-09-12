module mod
parameter (n=2)
type ty1
integer,allocatable::i4(:)
end type
end
call sub(1)
call sub(2)
print *,'pass'
end
subroutine sub(j)
use mod
integer i,j
type(ty1),allocatable,save:: type1(:)
if(j==1)then
allocate(type1(n))
do i=1,n
allocate(type1(i)%i4(n))
type1(i)%i4(n) = 1
end do
endif
do i=1,j
type1(j)%i4=type1(j)%i4(n)
enddo
if(sizeof(type1(1)%i4)/=8) print *,'err1'
end subroutine
