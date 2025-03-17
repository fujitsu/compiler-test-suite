module m1
  type x
     integer::x1
     contains
       final:: xp
  end type
  type y
    integer::y1
    type(x),allocatable::y2
  end type
contains
  subroutine xp(d)
    type(x):: d
    print *,100
  end subroutine
 end
subroutine s1
use m1
  type(y),allocatable:: v
!$omp parallel
 !$omp sections firstprivate(v)
 !$omp section
  if( allocated(v) ) then
    print *,1501
    if( allocated(v%y2) ) print *,1502
  endif
 !$omp section
  if( allocated(v) ) then
    print *,1601
    if( allocated(v%y2) ) print *,1602
  endif
 !$omp section
  if( allocated(v) ) then
    print *,1701
    if( allocated(v%y2) ) print *,1702
  endif
 !$omp end sections
!$omp end parallel
  if( allocated(v) ) print *,201
end
call omp_set_num_threads(2)
call s1
print *,'pass'
end
