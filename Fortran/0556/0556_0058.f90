program main
	type t1
  	integer :: a
	end type
class(t1),pointer :: x
allocate(x)
print *, "PASS"
x%a = 10
end
