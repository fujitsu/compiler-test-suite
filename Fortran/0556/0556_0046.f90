program main
type t1
 integer :: yy
 class(*),allocatable :: c2 (:)    
 integer :: ZZ
endtype
type (t1) :: aa
allocate(INTEGER:: aa%c2(1))
print *, "PASS"
end
