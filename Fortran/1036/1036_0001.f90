module m1
 integer,pointer:: pp(:)
 integer,target:: tt(10)=(/1,2,3,4,5,6,7,8,9,10/)
contains
subroutine s(p,i,j,k)
 integer,pointer:: p(:)
  call ss(p(i:j),i,j,k)
end subroutine 
end
use m1
pp=>tt
call s(pp,2,5,1)
pp=>tt(2:10:2)
call s(pp,2,5,2)
print *,'pass'
end
subroutine ss(ia,i,j,k)
integer ia(i:j)
if (k==1) then
  if (any(ia/=(/2,3,4,5/)))print *,'error-1'
else
  if (any(ia/=(/4,6,8,10/)))print *,'error-2'
endif
end
