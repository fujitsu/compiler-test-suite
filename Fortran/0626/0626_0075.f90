module m1
  type base
    integer:: x1
  end type
  class(base),allocatable,dimension(:,:,:,:):: a
contains
subroutine s
a(2,3,4,1)%x1=1
end subroutine
end
use m1
allocate(a(2,3,4,1))
a(2,1,4,1)%x1=101
call s
i=3
if (a(2,i,4,1)%x1/=1)print *,'fail'
i=1
if (a(2,i,4,1)%x1/=101)print *,'fail'
print *,'pass'
end
