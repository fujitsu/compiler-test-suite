program main
type t2
	class(*),pointer :: c1     
endtype
type (t2) :: aa
allocate(INTEGER:: aa%c1)
print *, "PASS"
end
