module m1
character(len=:),allocatable::n3(:,:)
contains
subroutine s1(k,n4,n3)
character(len=:),allocatable::n3(:,:)
character(len=k),allocatable::n4(:,:)
allocate(n3(2,1),source=reshape(["aa","bb"],[2,1]))
call move_alloc(n3,n4)
if(any([n4]/=["aa","bb"])) print *,'err2'
if (len(n4)/=2) print *,1010
if (len(n3)/=2) print *,1010
if (lbound(n4,1)/=1) print *,1012
if (ubound(n4,1)/=2) print *,1013
if (size(n4)/=2) print *,1014
end
end
use m1
character(len=2),allocatable::n4(:,:)
call s1(2,n4,n3)
print *,'pass'
end
