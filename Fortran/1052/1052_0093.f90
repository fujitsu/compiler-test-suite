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
 !$omp parallel firstprivate(v)

   if( allocated(v) ) print *,1401

!$omp end parallel
end
call omp_set_num_threads(2)
call s1
print *,'pass'
end
