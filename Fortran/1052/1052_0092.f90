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
  allocate(v)
  v%y1=1
 !$omp parallel firstprivate(v)

  v%y1=11
  if (v%y1/=11) print *,1201
  if( allocated(v%y2) ) print *,1301

!$omp end parallel
  if (v%y1/=1) print *,201
end
call omp_set_num_threads(2)
call s1
print *,'pass'
end
