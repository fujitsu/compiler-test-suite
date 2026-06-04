module m1
  type z
    integer(8)::z1=1
  end type
  type,extends(z)::e
     integer::y1=2
     integer(8),allocatable::e1
 end type
  type,extends(e)::ee
     integer::y2=3
     integer(8),allocatable::e2
 end type
contains
subroutine s1()
     class(e),allocatable::w(:)
     class(z),allocatable::a (:)
     class(e),allocatable::b(:)
     class(e),allocatable::c(:)
   allocate(ee::w(2))
  call ss
   allocate(a,b,c,mold=w)
if (size(a)/=2) print *,62731
if (size(b)/=2) print *,62732
if (size(c)/=2) print *,62733
do n=1,2
if (a(n)%z1/=1) print *,29291
if (b(n)%z1/=1) print *,29292
if (c(n)%z1/=1) print *,29293
select type(p=>a)
  type is(ee)
     if (p(n)%y1/=2) print *,7271
     if (p(n)%y2/=3) print *,7273
  class default
    print *,999
end select
select type(p=>b)
  type is(ee)
     if (p(n)%y1/=2) print *,6271
     if (p(n)%y2/=3) print *,6273
  class default
    print *,999
end select
select type(p=>c)
  type is(ee)
     if (p(n)%y1/=2) print *,5271
     if (p(n)%y2/=3) print *,5273
  class default
    print *,999
end select
end do
end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(8,*) d
  deallocate(d)
end
end
use m1
call s1()
     print *,'sngg651t : pass'
     end
