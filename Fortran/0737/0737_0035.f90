type x
 integer,allocatable::p1(:)
end type
type(x)::p(5)
do k=1,5
  allocate(p(k)%p1(k))
  p(k)%p1=(/(kk,kk=11,10+k)/)
end do
do k=1,5
if (size(p(k)%p1)/=k)write(6,*) "NG"
if (any(p(k)%p1/=(/(kk,kk=11,10+k)/)))write(6,*) "NG"
end do
call sub(p(1:5:2))
if (size(p(1)%p1)/=5)write(6,*) "NG"
if (any(p(1)%p1/=(/1,2,3,4,5/)))write(6,*) "NG"
if (size(p(2)%p1)/=2)write(6,*) "NG"
if (any(p(2)%p1/=(/11,12/)))write(6,*) "NG"
if (size(p(3)%p1)/=5)write(6,*) "NG"
if (any(p(3)%p1/=(/1,2,3,4,5/)))write(6,*) "NG"
if (size(p(4)%p1)/=4)write(6,*) "NG"
if (any(p(4)%p1/=(/11,12,13,14/)))write(6,*) "NG"
if (size(p(5)%p1)/=5)write(6,*) "NG"
if (any(p(5)%p1/=(/1,2,3,4,5/)))write(6,*) "NG"
print *,'pass'
contains
subroutine sub(p)
type(x) :: p(:)
integer ::pp(5)=(/1,2,3,4,5/)
do i=1,size(p)
   p(i)=x(pp)
end do
end subroutine
end

