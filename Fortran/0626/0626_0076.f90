module m1
  type base
    integer:: x1
  end type
  class(*),allocatable,dimension(:,:,:,:):: a
contains
subroutine s
select type (a)
class is(base)
a(2,3,4,1)%x1=1
end select
end subroutine
end
use m1
allocate(base::a(2,3,4,1))
select type (a)
class is(base)
a(2,1,4,1)%x1=101
end select
call s
i=3
select type (a)
class is(base)
if (a(2,i,4,1)%x1/=1)print *,'fail'
class default
  print *,201
end select
i=1
select type (a)
class is(base)
if (a(2,i,4,1)%x1/=101)print *,'fail'
class default
  print *,202
end select
print *,'pass'
end
