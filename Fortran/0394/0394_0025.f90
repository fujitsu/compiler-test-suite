module m1
  type x
     integer:: x1
     integer:: x2=2
  end type
 type y
   integer:: y1=1
   type(x),pointer:: y2
   integer:: y3=3
   integer:: y4
  end type
 type z
   integer:: z1
   integer:: z2=2
  end type
contains
subroutine s1
type yz
type (y),allocatable:: v1,v2,v3
type (z),allocatable:: w1,w2,w3
end type
type (yz):: zz
allocate(zz%v1)
if (zz%v1%y1/=1) print *,101
if (associated(zz%v1%y2)) print *,102
if (zz%v1%y3/=3) print *,103
if (zz%v1%y4/=0) print *,104
call set(zz%v1)
allocate(zz%v2)
if (zz%v2%y1/=1) print *,101
if (associated(zz%v2%y2)) print *,102
if (zz%v2%y3/=3) print *,103
if (zz%v2%y4/=0) print *,104
call set(zz%v2)
allocate(zz%v3)
if (zz%v3%y1/=1) print *,101
if (associated(zz%v3%y2)) print *,102
if (zz%v3%y3/=3) print *,103
if (zz%v2%y4/=0) print *,104
call set(zz%v3)
allocate(zz%w1)
if (zz%w1%z1/=0) print *,201
if (zz%w1%z2/=2) print *,202
call setz(zz%w1)
allocate(zz%w2)
if (zz%w2%z1/=0) print *,201
if (zz%w2%z2/=2) print *,202
call setz(zz%w2)
allocate(zz%w3)
if (zz%w3%z1/=0) print *,201
if (zz%w3%z2/=2) print *,202
call setz(zz%w3)
deallocate(zz%v1,zz%v2,zz%v3)
deallocate(zz%w1,zz%w2,zz%w3)
end subroutine
subroutine set(v)
type (y),allocatable:: v
v%y1= v%y1+100
allocate(v%y2)
if (v%y2%x1/=0) print *,1001
if (v%y2%x2/=2) print *,1002
v%y2= x(100,200)
v%y3= v%y3+100
end subroutine
subroutine setz(w)
type (z),allocatable:: w
w%z1= w%z1+100
w%z2= w%z2+100
end subroutine
end
use m1
call s1
call s1
call s1
call s1
print *,'pass'
end
