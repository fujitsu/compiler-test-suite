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
type (y),allocatable:: v1,v2,v3
type (z),allocatable:: w1,w2,w3
allocate(v1)
if (v1%y1/=1) print *,101
if (associated(v1%y2)) print *,102
if (v1%y3/=3) print *,103
if (v1%y4/=0) print *,104
call set(v1)
allocate(v2)
if (v2%y1/=1) print *,101
if (associated(v2%y2)) print *,102
if (v2%y3/=3) print *,103
if (v2%y4/=0) print *,104
call set(v2)
allocate(v3)
if (v3%y1/=1) print *,101
if (associated(v3%y2)) print *,102
if (v3%y3/=3) print *,103
if (v2%y4/=0) print *,104
call set(v3)
allocate(w1)
if (w1%z1/=0) print *,201
if (w1%z2/=2) print *,202
call setz(w1)
allocate(w2)
if (w2%z1/=0) print *,201
if (w2%z2/=2) print *,202
call setz(w2)
allocate(w3)
if (w3%z1/=0) print *,201
if (w3%z2/=2) print *,202
call setz(w3)
deallocate(v1,v2,v3)
deallocate(w1,w2,w3)
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
