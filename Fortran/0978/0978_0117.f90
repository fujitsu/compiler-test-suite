module m1
contains
subroutine s1(p1,p2)
intent(out)::p1
pointer p1
integer ::p2
dimension p1(:,:)
dimension p2(:,:)
intent(out)::p2
pointer p2
integer ::p1
end subroutine 
subroutine s2(p1,p2)
pointer p1
integer ::p2
dimension p1(:,:)
intent(out)::p2
pointer p2
integer ::p1
intent(out)::p1
dimension p2(:,:)
allocate(p1(3,2),p2(3,2))
p1=1
p2=2
end subroutine 
end
use m1
dimension p1(:,:),p2(:,:)
integer ::p2,p1
pointer p1,p2
allocate(p1(2,3),p2(2,3))
p1=0;p2=0
call s1(p1,p2)
call s2(p1,p2)
if (any(shape(p1)/=(/3,2/)))write(6,*) "NG"
if (any(shape(p2)/=(/3,2/)))write(6,*) "NG"
if (any(p1/=1))write(6,*) "NG"
if (any(p2/=2))write(6,*) "NG"
print *,'pass'
end


