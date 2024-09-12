module m1
  type :: t23456789
     integer :: n
  end type

  type t1
     integer :: n
  end type 

  type, extends(t1) :: t2
     type(t23456789),pointer :: x
  end type 

type(t2)::v
end
use m1
allocate(v%x)
v%n=2
v%x%n=1
if (v%n/=2) print *,211
if (v%x%n/=1) print *,201

print *,'pass'
end
