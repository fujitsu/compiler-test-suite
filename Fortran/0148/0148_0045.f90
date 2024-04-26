module m1
contains
  SUBROUTINE x(k,c1,c2,c3)
    CHARACTER(*),INTENT(out):: c1(:,:,:)
    CHARACTER(*),INTENT(out):: c2(:,:,:)
    CHARACTER(*),INTENT(out):: c3(:,:,:)
c1(1,1,1)='1'
c2(1,1,1)=c1(1,1,1)
c3(1,1,1)=c1(1,1,1)
contains
subroutine set(c1,c2,c3)
character(*)::c1(:,:,:),c2(:,:,:),c3(:,:,:)
c1='1'
c2='1'
c3='1'
end subroutine
end subroutine
  END
use m1
    CHARACTER(1):: c1(2,2,3,4)
    CHARACTER(1):: c2(2,2,3,4)
    CHARACTER(1):: c3(2,2,3,4)
c1='a'
c2='a'
c3='a'
call x(2,c1(1,:,:,:),c2(1,:,:,:),c3(1,:,:,:))
if (c1(1,1,1,1)/='1') print *,101
if (c2(1,1,1,1)/='1') print *,121
if (c3(1,1,1,1)/='1') print *,131
print *,'pass'
end
