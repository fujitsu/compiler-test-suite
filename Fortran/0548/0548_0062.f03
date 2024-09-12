module mod
parameter (n=2)
type ty1
integer,allocatable::i4(:)
real,allocatable::r(:)
complex,allocatable::c(:)
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
allocate(type1(i)%r(n))
allocate(type1(i)%c(n))
type1(i)%i4(n) = 1
type1(i)%r(n) = 1.0
type1(i)%c(n) = (1.0,0.0)
end do
endif
do i=1,j
type1(j)%i4=type1(j)%i4(n)
type1(j)%i4=type1(j)%r(n)
type1(j)%i4=type1(j)%c(n)
enddo
if(storage_size(type1(1)%i4)/=32) print *,'err1'
if(storage_size(type1(1)%r)/=32) print *,'err1'
if(storage_size(type1(1)%c)/=64) print *,'err1'
end subroutine
