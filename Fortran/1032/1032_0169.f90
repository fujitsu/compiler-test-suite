module m1
 type sometype
    integer a1
    character a2
 end type
 contains
subroutine sub(n,b)
type sometype_ptr
   type(sometype), dimension(:), pointer :: ptr
end type sometype_ptr

type(sometype), dimension(10*n), target :: b
type(sometype_ptr), dimension(n) :: a
integer :: i

forall (i=1:n)
  a(i)%ptr=>b(10*i-9:10*i)
end forall
k=1
do j=1,3
do i=1,10
if (   (a(j)%ptr(i)%a1/=k))write(6,*) "NG"
if (   (a(j)%ptr(i)%a1/=k))write(6,*) "NG"
if (   (a(j)%ptr(i)%a1/=k))write(6,*) "NG"
k=k+1
end do
end do
end subroutine
end
use m1
parameter (n=3)
type(sometype), dimension(10*n), target :: b

do i=1,n*10
  b(i)%a1=i
  b(i)%a2='z'
end do
call sub(n,b)
print *,'pass'
end
