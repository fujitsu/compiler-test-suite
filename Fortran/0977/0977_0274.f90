call aaaaa
call bbbbb
call ccccc
call ddddd
print *,'pass'
contains
subroutine aaaaa
integer,allocatable::a(:),b(:)
n=2
allocate (a(n), b(n*2))
a=(/(i,i=1,n)/)
b=-1
if(any(a/=(/1,2/))) print *,'err1'
if(any(b/=(/-1,-1,-1,-1/))) print *,'err2'
if(allocated(a).neqv..true.) print *,'err3'
if(allocated(b).neqv..true.) print *,'err4'
b(1:n)=a
if(any(b/=(/1,2,-1,-1/))) print *,'err5'
call move_alloc(b,a)
if(any(a/=(/1,2,-1,-1/))) print *,'err6'
if(allocated(a).neqv..true.) print *,'err7'
if(allocated(b).neqv..false.) print *,'err8'
end subroutine
subroutine bbbbb
integer :: n = 2
real, allocatable :: x(:), y(:)
allocate (x(n), y(2*n))
x = (/(i,i=1,n)/)
Y = -1
if(allocated(x).neqv..true.) print *,'err1'
if(allocated(y).neqv..true.) print *,'err2'
if(any(x/=(/1.0,2.0/))) print *,'err3'
if(any(y/=(/(-1.0,i=1,4)/))) print *,'err4'
y (1:n) = x
if(any(y/=(/1.0,2.0,-1.0,-1.0/))) print *,'err5'
call move_alloc (y, x)
if(allocated(x).neqv..true.) print *,'err1'
if(allocated(y).neqv..false.) print *,'err2'
if(any(x/=(/1.0,2.0,-1.0,-1.0/))) print *,'err5'
end subroutine
subroutine ccccc
implicit none
integer, allocatable :: x(:), y(:), tmp(:)
character(4), allocatable :: a(:), b(:)
integer :: i
allocate (x(2))
allocate (a(2))
x = (/ 10, 20 /)
call move_alloc (x, y)
if (allocated(x)) print *,'err1'
if (.not.allocated(y)) print *,'err2'
if (any(y /= (/ 10, 20 /))) print *,'err3'
a = (/ "abcd", "efgh" /)
call move_alloc (a, b)
if (allocated(a)) print *,'err4'
if (.not.allocated(b)) print *,'err5'
if (any(b /= (/ "abcd", "efgh" /))) print *,'err6'
call move_alloc (y, tmp)
allocate (y(6), stat=i)
if (i /= 0) print *,'err7'
y(1:2) = tmp
y(3:) = 99
deallocate(tmp)
if (any(y /= (/ 10, 20, 99, 99, 99, 99 /))) print *,'err8'
end subroutine
subroutine ddddd
implicit none
type typ
integer,pointer:: po1 => null()
end type typ
type(typ), allocatable :: to(:)
type(typ), allocatable :: from(:)
integer,target :: i1, i2
i1 = 1
i2 = 2
allocate(to(1))
to(1)%po1 => i1
allocate(from(2))
from(1) = to(1)
if(from(1)%po1.ne.1) print *,'err1'
if(allocated(from).neqv..true.) print *,'err2'
if(allocated(to).neqv..true.) print *,'err3'
call move_alloc(from, to)
to(2)%po1 => i2
if(allocated(from).neqv..false.) print *,'err4'
if(allocated(to).neqv..true.) print *,'err5'
if(to(2)%po1.ne.2) print *,'err6'
end subroutine
end
