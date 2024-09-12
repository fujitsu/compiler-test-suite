program main
	type t1
  	integer :: a
	end type
type t2
	class(t1), allocatable:: c1
	 integer :: yy
	class(*),allocatable :: c2      
	integer :: ZZ
endtype
type (t2),pointer :: aa
allocate(aa)
print*,"PASS"
end
