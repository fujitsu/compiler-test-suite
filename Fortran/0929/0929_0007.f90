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
    type(y)::z2
    contains
     final::zp
  end type

contains
  subroutine xp(d)
    type(x):: d
    write(8,*) 100
  end subroutine

  subroutine zp(d)
    type(z):: d
    write(8,*) 200
  end subroutine

subroutine s1
  type(x):: u
  type(y):: v
  type(z),allocatable:: w(:)

  allocate(w(2))
  allocate(w(2)%z2%y2)

  allocate(v%y2)

  w(1)%z1 = 11
  w(2)%z2%y1 = 12
  w(2)%z2%y2%x1 = 13

  v%y1=1
  v%y2%x1=2
 !$omp sections private(v,w,u)
 !$omp section
  w(1)%z1 = 21
  w(2)%z2%y1 = 22
  w(2)%z2%y2%x1 = 23

  v%y1=11
  v%y2%x1=12

  if (v%y1/=11) print *,101
  if (v%y2%x1/=12) print *,102
  if (w(1)%z1/=21) print *,103
  if (w(2)%z2%y1/=22) print *,104
  if (w(2)%z2%y2%x1/=23) print *,105
 !$omp end sections

  if (v%y1/=1) print *,201
  if (v%y2%x1/=2) print *,202
  if (w(1)%z1/=11) print *,203
  if (w(2)%z2%y1/=12) print *,204
  if (w(2)%z2%y2%x1/=13) print *,205
end
end module

use m1
call s1
rewind 8
read(8,*) k;if(k/=100) print *,101
read(8,*) k;if(k/=100) print *,102
read(8,*) k;if(k/=100) print *,103
read(8,*) k;if(k/=100) print *,103
read(8,*) k;if(k/=100) print *,103
read(8,*) k;if(k/=100) print *,103
read(8,*,end=100) k
print *,911
100 print *,'PASS'
end
