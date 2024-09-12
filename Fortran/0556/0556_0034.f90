program main
	type t1
  	integer :: a
	end type
class(t1),allocatable :: x
allocate(x)
x%a = 10
print *,x%a
print *,"PASS"
end
