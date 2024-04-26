module m1
  type x0
     integer:: x01
     integer:: x02
  end type
end
subroutine s1
use m1
type (x0)            ::source
type (x0),allocatable::alloc
integer(8)::nnnn

source%x01= 11
source%x02= 12
if (source%x01/=11) print *,111
if (source%x02/=12) print *,112

allocate(alloc)
nnnn=loc(alloc)
alloc%x01= 1
alloc%x02= 2
allocate(alloc, stat=kkk, source=source)

if (kkk==0) print *,401
if (nnnn/=loc(alloc)) print *,210
if (alloc%x01/=1) print *,211
if (alloc%x02/=2) print *,212

end
call s1
print *,'pass'
end
