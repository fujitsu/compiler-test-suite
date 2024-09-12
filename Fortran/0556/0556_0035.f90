program main
	type t1
  	integer :: a
	end type
class(t1),pointer :: x
allocate(x)
x%a = 10
print *,"PASS"
end
