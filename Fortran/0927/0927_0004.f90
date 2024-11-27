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
  type(y),allocatable:: v(:)
  allocate(v(2))
  allocate(v(2)%y2%x1)
  v(2)%y1=1
  v(2)%y2%x1=2
!$omp single private(v)
  v(2)%y1=11
  v(2)%y2%x1=12
  if (v(2)%y1/=11) print *,1201
  if (v(2)%y2%x1/=12) print *,1301
!$omp end single
  if (v(2)%y1/=1) print *,201
  if (v(2)%y2%x1/=2) print *,301
end
call s1
print *,'PASS'
end
