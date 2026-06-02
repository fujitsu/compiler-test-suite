module mod1
interface
  subroutine sub(a)
    integer :: a
  end subroutine sub
  subroutine sub1(a)
    integer :: a
  end subroutine sub1
  subroutine sub2(a)
    integer :: a
  end subroutine sub2
end interface
procedure(sub),pointer::ffunptr
!$omp threadprivate(ffunptr)
end module

use mod1
integer :: omp_get_thread_num
integer :: i
!$omp threadprivate(i)
ffunptr=>sub
!$omp parallel copyin(ffunptr)
call ffunptr(i)
if (i /= 1) print *,1
if (omp_get_thread_num() == 1) then
  ffunptr => sub1
else
  ffunptr => sub2
end if
call ffunptr(i)
if (omp_get_thread_num() == 1) then
  if (i /= 5) print *,5
else
  if (i /= 10) print *,10
end if
!$omp end parallel

print *,'pass'
end

subroutine sub(a)
  integer::a
  a = 1
end subroutine sub

subroutine sub1(a)
  integer::a
  a = 5
end subroutine sub1

subroutine sub2(a)
  integer::a
  a = 10
end subroutine sub2
