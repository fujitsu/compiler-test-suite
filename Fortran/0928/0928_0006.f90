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
    write(1,*) 100
  end subroutine

  subroutine zp(a)
    type(d):: a
    write(1,*) 200
  end subroutine
end module

subroutine s1()
use m1
  type(x):: u
  type(y):: v
  class(z),allocatable:: w(:)
  class(z),allocatable:: p(:)

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
 !$omp sections lastprivate(v,w,u,p)
 !$omp section
  p(3)%z2%y1 = 32
  p(3)%z2%y2(4)%x1 = 33

  select type(w)
   type is(d)
    w(1)%z1 = 21
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
   type is(d)
    if (w(1)%z1/=21) print *,105
    if (w(2)%z2%y1/=22) print *,106
    if (w(2)%z2%y2(2)%x1/=23) print *,107
   
   class default
    print*, 914
  end select
 !$omp end sections

  if (v%y1/=11) print *,201, v%y1
  if (v%y2(3)%x1/=12) print *,202

  select type(p)
   type is(z)
    if (p(3)%z2%y1/=32) print *,203
    if (p(3)%z2%y2(4)%x1/=33) print *,204
   
   class default
    print*, 915
  end select

  select type(w)
   type is(d)
    if (w(1)%z1/=21) print *,205
    if (w(2)%z2%y1/=22) print *,206
    if (w(2)%z2%y2(2)%x1/=23) print *,207
   
   class default
    print*, 916
  end select
end

use m1
call omp_set_num_threads(2)
call s1()
rewind 1
read(1,*) k;if(k/=100) print *,101
read(1,*) k;if(k/=100) print *,102
read(1,*) k;if(k/=100) print *,103
read(1,*) k;if(k/=100) print *,104
read(1,*) k;if(k/=100) print *,105
read(1,*) k;if(k/=100) print *,106
read(1,*) k;if(k/=100) print *,104
read(1,*) k;if(k/=100) print *,105
read(1,*) k;if(k/=100) print *,106
read(1,*,end=100) k
print *,112
100 print *,'PASS'
end
