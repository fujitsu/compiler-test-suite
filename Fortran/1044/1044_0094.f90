module m1
contains
subroutine sub(a1,a2,a3)
integer,target::a1(:,:),a2(:,:)
integer       ::a3(:,:)
a1=1
a2=2
a3=3
end subroutine 
end
use m1
integer,target::a1(3,3)
integer,target::a3(3,3)
call sub(a1,a1,a3)
if (any(a1/=2))write(6,*) "NG"
print *,'pass'
end

