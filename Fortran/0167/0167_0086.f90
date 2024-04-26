module m1
 type x
   integer,allocatable::x1(:)
 end type
 type(x),allocatable:: a1(:)
 type(x),allocatable:: d1(:)
contains
  subroutine alc
    allocate(d1(1))
    allocate(d1(1)%x1(2))
  end subroutine
end

module m2
use m1,only:e1=>d1
end

module m4
use m1,only:f1=>d1
end

subroutine s1
use m1
use m2
use m4
call alc
f1(1)%x1(1)=1
e1(1)%x1(1)=d1(1)%x1(1)+1
if (d1(1)%x1(1)/=2) print *,101
end

call s1
print *,'pass'
end
