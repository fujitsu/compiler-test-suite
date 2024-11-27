type x
 integer,allocatable::p1(:)
end type
type(x)::p(5),px(3)
do k=1,5
  allocate(p(k)%p1(k))
  p(k)%p1=(/(kk,kk=11,10+k)/)
end do
call sub(p(1:5:2),px)
if (size(p(1)%p1)/=5)write(6,*) "NG"
if (any(p(1)%p1/=(/1,2,3,4,5/)))write(6,*) "NG"
if (size(p(2)%p1)/=2)write(6,*) "NG"
if (any(p(2)%p1/=(/11,12/)))write(6,*) "NG"
if (size(p(3)%p1)/=5)write(6,*) "NG"
if (any(p(3)%p1/=(/1,2,3,4,5/)))write(6,*) "NG"
if (any(p(4)%p1/=(/11,12,13,14/)))write(6,*) "NG"
if (size(p(5)%p1)/=5)write(6,*) "NG"
if (any(p(5)%p1/=(/1,2,3,4,5/)))write(6,*) "NG"
if (size(px(1)%p1)/=5)write(6,*) "NG"
if (any(px(1)%p1/=(/1,2,3,4,5/)))write(6,*) "NG"
if (size(px(2)%p1)/=5)write(6,*) "NG"
if (any(px(2)%p1/=(/1,2,3,4,5/)))write(6,*) "NG"
if (size(px(3)%p1)/=5)write(6,*) "NG"
if (any(px(3)%p1/=(/1,2,3,4,5/)))write(6,*) "NG"
print *,'pass'
contains
subroutine sub(p,px)
type(x) :: p(:),px(:)
integer ::pp(5)=(/1,2,3,4,5/)
do i=1,size(p)
   p(i)=x(pp)
end do
px=p
end subroutine
end

