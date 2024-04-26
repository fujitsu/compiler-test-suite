module m1
implicit none
  type :: t23456789
     integer :: n
  end type

  type t1
     integer :: n
  end type

  type, extends(t1) :: t2
     type(t23456789),allocatable :: x
     type(t23456789),allocatable :: xx(:)
  end type
type (t2):: y1
type (t2),allocatable:: y2(:)
end
subroutine s1
use m1
implicit none
type (t2):: y3
type (t2),allocatable:: y4(:)
allocate( y2(2), y4(2) )
allocate( y1%x , y1%xx(2) )
y1%x%n=1
y1%xx%n=[1,2]
allocate( y2(1)%x , y2(1)%xx(2) )
y2(1)%x%n=1
y2(1)%xx%n=[1,2]
allocate( y2(2)%x , y2(2)%xx(2) )
y2(2)%x%n=1
y2(2)%xx%n=[1,2]
allocate( y3%x , y3%xx(2) )
y3%x%n=1
y3%xx%n=[1,2]
allocate( y4(1)%x , y4(1)%xx(2) )
y4(1)%x%n=1
y4(1)%xx%n=[1,2]
allocate( y4(2)%x , y4(2)%xx(2) )
y4(2)%x%n=1
y4(2)%xx%n=[1,2]
if (y1%x%n/=1) print *,101
if (any(y1%xx%n/=[1,2])) print *,102
if (y2(1)%x%n/=1) print *,111
if (any(y2(1)%xx%n/=[1,2])) print *,112
if (y2(2)%x%n/=1) print *,121
if (any(y2(2)%xx%n/=[1,2])) print *,122
if (y3%x%n/=1) print *,131
if (any(y3%xx%n/=[1,2])) print *,132
if (y4(1)%x%n/=1) print *,141
if (any(y4(1)%xx%n/=[1,2])) print *,142
if (y4(2)%x%n/=1) print *,151
if (any(y4(2)%xx%n/=[1,2])) print *,152
end

call s1
print *,'pass'
end
