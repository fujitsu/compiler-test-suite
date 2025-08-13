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

  type z
    integer::z1
    type(x)::z2
  end type

contains
  subroutine xp(d)
    type(x):: d
    write(2,*) 100
  end subroutine
end module

subroutine s1
use m1
  type(y):: v
  type(z):: u

  allocate(v%y2)
  v%y1=1
  v%y2%x1=2

  u%z1 = 11
  u%z2%x1 = 12
!$omp do private(u,v)
  do i=1,5
  v%y1=11
  v%y2%x1=12

  u%z1 = 21
  u%z2%x1 = 22

  if (v%y1/=11) print *,101
  if (v%y2%x1/=12) print *,102
  end do
!$omp end do
  if (v%y1/=1) print *,201
  if (v%y2%x1/=2) print *,202
  if (u%z1/=11) print *,203
  if (u%z2%x1/=12) print *,204
end subroutine

call s1
rewind 2
read(2,*) k;if(k/=100) print *,101
read(2,*) k;if(k/=100) print *,202
read(2,*) k;if(k/=100) print *,303
read(2,*,end=100) k;if(k/=100) print *,404
read(2,*,end=100) k
print *,911
100 print *,"PASS"
end
