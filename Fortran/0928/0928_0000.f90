module m1
  type x
     integer,allocatable::x1
     contains
       final:: xp
  end type

  type y
    integer::y1
    type(x)::y2
  end type

contains
  subroutine xp(d)
    type(x):: d
    write(1,*) 100
  end subroutine
end

subroutine s1
use m1
  type(y):: v
  allocate(v%y2%x1)
  v%y1=1
  v%y2%x1=2
!$omp parallel 
!$omp sections lastprivate(v)
  v%y1=11
  v%y2%x1=12
  if (v%y1/=11) print *,1201
  if (v%y2%x1/=12) print *,1301
!$omp end sections
!$omp end parallel
  if (v%y1/=11) print *,201,v%y1
  if (v%y2%x1/=12) print *,301,v%y2%x1
end
call omp_set_num_threads(2)
call s1
rewind 1
read(1,*) k;if(k/=100) print *,101
read(1,*,end=100) k;if(k/=100) print *,101
read(1,*) k;if(k/=100) print *,101
read(1,*,end=100) k
print *,102
100 print *,'PASS'
end