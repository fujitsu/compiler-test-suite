module mod1
procedure(integer) :: sub,sub1,sub2
pointer::ffunptr
procedure() :: ffunptr
!$omp threadprivate(ffunptr)
integer::ffunptr
end module

use mod1
integer :: omp_get_thread_num
ffunptr=>sub
!$omp parallel copyin(ffunptr)
if (ffunptr() /= 1) print *,1
if (omp_get_thread_num() == 1) then
  ffunptr => sub1
else
  ffunptr => sub2
end if
if (omp_get_thread_num() == 1) then
  if (ffunptr() /= 5) print *,5
else
  if (ffunptr() /= 10) print *,10
end if
!$omp end parallel

print *,'pass'
end

function sub() result(ret)
  integer::ret
  ret = 1
end function sub

function sub1() result(ret)
  integer::ret
  ret = 5
end function sub1

function sub2() result(ret)
  integer::ret
  ret = 10
end function sub2
