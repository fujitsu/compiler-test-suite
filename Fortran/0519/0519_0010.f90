module m1
type x1
character(len=:),allocatable::n3(:,:)
character(len=2),allocatable::n4(:,:)
end type
type x2
  integer::d
  type(x1),allocatable::y2(:,:)
end type
contains
subroutine s1(k,y)
type(x2),allocatable:: y(:)
allocate(y(2))
allocate(y(2)%y2(2,2))
allocate(y(2)%y2(2,2)%n3(2,1),source=reshape(["aa","bb"],[2,1]))
call move_alloc(y(k)%y2(2,2)%n3,y(2)%y2(2,k)%n4)
if(any([y(2)%y2(2,2)%n4]/=["aa","bb"])) print *,'err2'
if (len(y(2)%y2(2,2)%n4)/=2) print *,1010
if (len(y(2)%y2(2,2)%n3)/=2) print *,1010
if (lbound(y(2)%y2(2,2)%n4,1)/=1) print *,1012
if (ubound(y(2)%y2(2,2)%n4,1)/=2) print *,1013
if (size(y(2)%y2(2,2)%n4)/=2) print *,1014
end
end
use m1
type(x2),allocatable:: y(:)
call s1(2,y)
print *,'pass'
end
