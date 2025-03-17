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
  type(y),allocatable:: v, k
 !$omp parallel firstprivate(v, k)

  if( allocated(v) ) print *,1501
  if( allocated(k) ) print *,1502

!$omp end parallel
end
call omp_set_num_threads(2)
call s1
print *,'pass'
end
