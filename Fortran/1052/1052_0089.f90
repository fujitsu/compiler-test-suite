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
 !$omp do schedule(dynamic) firstprivate(v)
  do i=1,10
    if( allocated(v) ) then
      print *,1501
      v%y1=v%y1+1
      v%y2%x1=v%y2%x1+1
    endif
  end do
 !$omp end do
!$omp end parallel
  if( allocated(v) ) print *,201
end
call omp_set_num_threads(2)
call s1
print *,'pass'
end
