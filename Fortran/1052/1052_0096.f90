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
subroutine s1(v,k,s)
  type(y),allocatable:: v, k
  type(y):: s
 !$omp parallel firstprivate(v, s, k)

  if( allocated(v) ) print *,1501
  if( allocated(k) ) print *,1601

!$omp end parallel
end
end
use m1
  type(y),allocatable:: v1, k1
  type(y):: s
call omp_set_num_threads(2)
call s1(v1,k1,s)
print *,'pass'
end
