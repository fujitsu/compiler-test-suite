module m
contains
subroutine s(p,i)
integer,pointer,dimension(:,:,:)::p
call ss(p,i+1,(i*2)+2-i)
end subroutine
end
use m
integer,pointer,dimension(:,:,:)::p,pp
allocate (p(2,3,4))
p=reshape((/(k,k=1,2*3*4)/),(/2,3,4/))
call s(p,1)
if (any(p/=0))print *,'error-11'
allocate(pp(4,6,8))
pp(2:4:2,2:6:2,2:8:2)=reshape((/(k,k=1,2*3*4)/),(/2,3,4/))+5
p=>pp(2:4:2,2:6:2,2:8:2)
call s(p,2)
if (any(p/=0))print *,'error-12'
print *,'pass'
end
subroutine ss(p,i,j)
integer,dimension(*)::p
if (i/=j-1)print *,'error-x'
select case(i)
case (2); if (any(p(1:2*3*4)/=0+(/(k,k=1,2*3*4)/)))print *,'error-01'
case (3); if (any(p(1:2*3*4)/=5+(/(k,k=1,2*3*4)/)))print *,'error-02'
end select
p(1:2*3*4)=0
end
