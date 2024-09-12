program main
implicit none
type t1
    integer           ::  x
 endtype
class (*),allocatable :: old
ALLOCATE (t1 :: OLD)
print *,"PASS"
end program
