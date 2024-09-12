module m1
  type x
     integer:: x1(2)
     integer:: x2(2)=2
  end type
 type y
   integer,dimension(2):: y1=1
   type(x),pointer,dimension(:):: y2
   integer,dimension(2):: y3=3
   integer,dimension(2):: y4
  end type
 type z
   integer,dimension(2):: z1
   integer,dimension(2):: z2=2
  end type
contains
subroutine s1
type (y),allocatable:: v1,v2,v3
type (z),allocatable:: w1,w2,w3
allocate(v1)
if (any(v1%y1/=1)) print *,101
if (associated(v1%y2)) print *,102
if (any(v1%y3/=3)) print *,103
if (any(v1%y4/=0)) print *,104, v1%y4
call set(v1)
allocate(v2)
if (any(v2%y1/=1)) print *,101
if (associated(v2%y2)) print *,102
if (any(v2%y3/=3)) print *,103
if (any(v2%y4/=0)) print *,104
call set(v2)
allocate(v3)
if (any(v3%y1/=1)) print *,101
if (associated(v3%y2)) print *,102
if (any(v3%y3/=3)) print *,103
if (any(v2%y4/=0)) print *,104
call set(v3)
allocate(w1)
if (any(w1%z1/=0)) print *,201
if (any(w1%z2/=2)) print *,202
call setz(w1)
allocate(w2)
if (any(w2%z1/=0)) print *,201
if (any(w2%z2/=2)) print *,202
call setz(w2)
allocate(w3)
if (any(w3%z1/=0)) print *,201
if (any(w3%z2/=2)) print *,202
call setz(w3)
deallocate(v1,v2,v3)
deallocate(w1,w2,w3)
end subroutine
subroutine set(v)
type (y),allocatable:: v
v%y1= v%y1+100
allocate(v%y2(2))
if (any(v%y2(2)%x1/=0)) print *,1001
if (any(v%y2(2)%x2/=2)) print *,1002
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
