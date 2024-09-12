program main
	type t1
  	integer :: a
	end type
type t2
	class(t1),allocatable :: c2(:)      
endtype
type (t2) :: aa
allocate(aa%c2(1))
print *, "PASS"
end
