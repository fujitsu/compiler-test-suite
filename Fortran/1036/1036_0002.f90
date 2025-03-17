module m1
 integer,pointer:: pp(:,:)
 integer,target:: tt(5,5)=reshape((/(n,n=1,25)/),(/5,5/))
contains
subroutine s(p,i,j)
 integer,pointer:: p(:,:)
k=1
  call ss(p(2,i:j),i,j,k)
k=2
  call ss(p(i:j,2),i,j,k)
k=1
  call ss(p(2,2:5),i,j,k)
k=2
  call ss(p(2:5,2),i,j,k)
end subroutine 
end
use m1
pp=>tt
call s(pp,2,5)
print *,'pass'
end
subroutine ss(ia,i,j,k)
integer ia(i:j)
if (k==1) then
  if (any(ia/=(/7,12,17,22/)))print *,'error-1'
else
  if (any(ia/=(/7,8,9,10/)))print *,'error-2'
endif
end
