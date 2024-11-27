module m1
contains
subroutine s(p)
integer,pointer,intent(in)::p(:)
p=p+100
end subroutine
end
use m1
type x
integer,pointer::p(:)
end type
type(x)::v(2)
integer,pointer::p(:)
allocate(v(1)%p(2));v(1)%p=(/11,12/)
allocate(v(2)%p(2));v(2)%p=(/21,22/)
allocate(p(2))
do i=1,2
call s(v(i)%p) 
end do
if (v(1)%p(1)/=111)write(6,*) "NG"
if (v(1)%p(2)/=112)write(6,*) "NG"
if (v(2)%p(1)/=121)write(6,*) "NG"
if (v(2)%p(2)/=122)write(6,*) "NG"
do i=1,2
p=(/31,32/)
call s(p) 
if (p(1)/=131)write(6,*) "NG"
if (p(2)/=132)write(6,*) "NG"
end do
print *,'pass'
end

