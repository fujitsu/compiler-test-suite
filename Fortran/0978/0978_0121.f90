module m1
type x
  integer::n=1
end type
contains
subroutine s0
intent(out)::p1
pointer p1
type(x) ::p2
dimension p1(:,:)
dimension p2(:,:)
intent(out)::p2
pointer p2
type(x) ::p1
entry      s1(p1,p2)
end subroutine 
subroutine s3
pointer p1
type(x) ::p2
dimension p1(:,:)
intent(out)::p2
pointer p2
type(x) ::p1
intent(out)::p1
dimension p2(:,:)
entry      s2(p1,p2)
allocate(p1(3,2),p2(3,2))
end subroutine 
end
use m1
dimension p1(:,:),p2(:,:)
type(x) ::p2,p1
pointer p1,p2
allocate(p1(2,3),p2(2,3))
p1=x(0);p2=x(0)
call s1(p1,p2)
call s2(p1,p2)
if (any(shape(p1)/=(/3,2/)))write(6,*) "NG"
if (any(shape(p2)/=(/3,2/)))write(6,*) "NG"
if (any(p1%n/=1))write(6,*) "NG"
if (any(p2%n/=1))write(6,*) "NG"
print *,'pass'
end



