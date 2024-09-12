module m1
  type x
     integer:: x1
     integer:: x2=2
  end type
 type y
   integer:: y1
   type(x),allocatable:: y2
   integer:: y3=100
  end type
contains
subroutine s1
type (y),allocatable:: v1,v2,v3
allocate(v1)
if (v1%y1/=0) print *,101,v1%y1
if (allocated(v1%y2)) print *,102
call set(v1)
allocate(v2)
if (v2%y1/=0) print *,111, v2%y1
if (allocated(v2%y2)) print *,102
call set(v2)
allocate(v3)
if (v3%y1/=0) print *,121,v3%y1
if (allocated(v3%y2)) print *,102
call set(v3)
deallocate(v1,v2,v3)
end subroutine
subroutine set(v)
type (y),allocatable:: v
v%y1= v%y1+100
allocate(v%y2)
if (v%y2%x1/=0) print *,1001
if (v%y2%x2/=2) print *,1002
v%y2= x(100,200)
end subroutine
end
use m1
call s1
call s1
call s1
call s1
print *,'pass'
end
