module m1
  type x
     integer::x1
     contains
       final:: xp
  end type

  type y
    integer::y1
    type(x),allocatable::y2(:)
  end type

  type z
    type(y)::z2
  end type

  type,extends(z)::d
    integer::z1
    contains
     final::zp
  end type

contains
  subroutine xp(d)
    type(x):: d(:)
    write(8,*) 100
  end subroutine

  subroutine zp(a)
    type(d):: a
    write(8,*) 200
  end subroutine
end module

subroutine s1()
use m1
  type(x):: u
  type(y):: v
  class(z),allocatable:: w(:)
  class(z),allocatable :: p(:)

  allocate(z::p(3))
  allocate(d::w(2))
  allocate(w(2)%z2%y2(3))
  allocate(p(3)%z2%y2(4))

  allocate(v%y2(5))

  select type(w)
   type is(d)
    w(1)%z1 = 11
    w(2)%z2%y1 = 12
    w(2)%z2%y2(2)%x1 = 13
   
   class default
    print*, 911
  end select

  v%y1=1
  v%y2(3)%x1=2
 
  p(3)%z2%y1 = 22
  p(3)%z2%y2(4)%x1 = 23
 !$omp simd private(v,w,u,p)
  do i=1,5
  p(3)%z2%y1 = 32
  p(3)%z2%y2(4)%x1 = 33

  select type(w)
   type is(z)
    w(2)%z2%y1 = 22
    w(2)%z2%y2(2)%x1 = 23
   
   class default
    print*, 912
  end select

  v%y1=11
  v%y2(3)%x1=12

  if (v%y1/=11) print *,101
  if (v%y2(3)%x1/=12) print *,102

  select type(p)
   type is(z)
    if (p(3)%z2%y1/=32) print *,103
    if (p(3)%z2%y2(4)%x1/=33) print *,104
   
   class default
    print*, 913
  end select

  select type(w)
   type is(z)
    if (w(2)%z2%y1/=22) print *,106
    if (w(2)%z2%y2(2)%x1/=23) print *,107
   
   class default
    print*, 914
  end select
  end do
 !$omp end simd

  if (v%y1/=1) print *,201
  if (v%y2(3)%x1/=2) print *,202

  select type(p)
   type is(z)
    if (p(3)%z2%y1/=22) print *,203
    if (p(3)%z2%y2(4)%x1/=23) print *,204
   
   class default
    print*, 915
  end select

  select type(w)
   type is(d)
    if (w(1)%z1/=11) print *,205
    if (w(2)%z2%y1/=12) print *,206
    if (w(2)%z2%y2(2)%x1/=13) print *,207
   
   class default
    print*, 916
  end select
end

use m1
call s1()
rewind 8
read(8,*) k;if(k/=100) print *,101
100 print *,'PASS'
end
