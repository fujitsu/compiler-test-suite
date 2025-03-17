module m
contains
subroutine s(p,i)
integer,pointer,dimension(:)::p
call ss(p,if((/(kk,kk=1,i)/)),if((/(kk,kk=i+1,10)/)),i)
end subroutine
end
use m
integer,pointer,dimension(:)::p,pp
allocate (p(5))
p=(/1,2,3,4,5/)
call s(p,1)
if (any(p/=0))print *,'error-11'
allocate(pp(10))
pp(2:10:2)=(/6,7,8,9,10/)
p=>pp(2:10:2)
call s(p,3)
if (any(p/=0))print *,'error-12'
print *,'pass'
end
subroutine ss(p,ia,ib,i)
integer,dimension(*)::p
select case(i+1)
case (2); if (any(p(1:5)/=0+(/1,2,3,4,5/)))print *,'error-01'
case (3); if (any(p(1:5)/=5+(/1,2,3,4,5/)))print *,'error-02'
end select
if (ia/=0 .or. ib/=0)print *,'ERROR-Z'
p(1:5)=0
end
function if(kk)
integer kk(*)
if=0
end
