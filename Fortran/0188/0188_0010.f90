
  type :: t23456789
     integer :: n
  end type

  type t1
     integer :: n
  end type 

  type, extends(t1) :: t2
     type(t23456789) :: x
  end type 

type(t2),pointer:: v
allocate(v)
v%x%n=1
if (v%x%n/=1) print *,201

print *,'pass'
end
