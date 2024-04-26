
  type :: t3
     integer :: n
  end type

  type t23456789
     integer :: n
  end type 

  type, extends(t23456789) :: y23456789
     type(t3) :: x
  end type 
type(y23456789)::v
v% x%n=1
if (v% x%n/=1) print *,101


print *,'pass'
end
