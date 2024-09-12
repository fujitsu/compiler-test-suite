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
type yy
type (y),pointer:: v1,v2,v3
end type
type (yy)::z
allocate(z%v1)
if (z%v1%y1/=0) print *,101,z%v1%y1
if (allocated(z%v1%y2)) print *,102
call set(z%v1)
allocate(z%v2)
if (z%v2%y1/=0) print *,111, z%v2%y1
if (allocated(z%v2%y2)) print *,102
call set(z%v2)
allocate(z%v3)
if (z%v3%y1/=0) print *,121,z%v3%y1
if (allocated(z%v3%y2)) print *,102
call set(z%v3)
deallocate(z%v1,z%v2,z%v3)
end subroutine
subroutine set(v)
type (y),pointer:: v
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
