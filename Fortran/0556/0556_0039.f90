program main
	type t1
  	integer :: a
	end type
type t2
	integer ,pointer:: yy  
	class(t1),pointer :: c2      
	integer :: ZZ
	class(*),pointer :: xx
endtype
type (t2) :: aa
aa%zz = 7
print *,aa%zz

print *,"PASS"
end
