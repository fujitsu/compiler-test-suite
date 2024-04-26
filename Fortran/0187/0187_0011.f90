module m1
  implicit none
  type :: t23456789
     integer :: n
  end type

  type type_x789
     integer :: n
  end type 

  type, extends(type_x789) :: type_y789
     type(t23456789) :: x
     type(t23456789) :: y
  end type type_y789
  type, extends(type_y789) :: type_z789
     type(t23456789) :: xx
     type(t23456789) :: yy
  end type type_z789
  type, extends(type_z789) :: type_w789
     type(t23456789) :: xxx
     type(t23456789) :: yyy
  end type type_w789
class(type_x789),allocatable:: v
integer::n
end
use m1
implicit none
allocate(type_w789:: v)
n=1
select type( v )
type is(type_w789)
v%n=100
v%x%n=1
v%y%n=1
v%xx%n=2
v%yy%n=2
v%xxx%n=2
v%yyy%n=2
n=n+1
end select
if (n/=2) print *,901
select type( v )
type is(type_w789)
if (v%n/=100) print *,701
if (v%x%n/=1) print *,701
if (v%y%n/=1) print *,701
if (v%xx%n/=2) print *,701
if (v%yy%n/=2) print *,701
if (v%xxx%n/=2) print *,701
if (v%yyy%n/=2) print *,701
n=n+1
end select
if (n/=3) print *,903
print *,'pass'
end
