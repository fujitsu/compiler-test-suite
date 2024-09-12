program main
implicit none
type t1
    integer           ::  x
 endtype
integer ::x = 5
class (*),allocatable :: new
class (*),allocatable :: old
ALLOCATE (INTEGER::old)    
ALLOCATE (new, SOURCE=x)
print *, "PASS"
end program
