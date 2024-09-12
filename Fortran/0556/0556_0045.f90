program main
type t1
   integer ,pointer:: yy   
   class(*), pointer:: c1
endtype
type (t1) :: aa
type t2
   class(t1), pointer:: c2
   integer ,pointer:: yz 
 endtype
type (t2) :: bb

allocate(INTEGER:: aa%c1)
allocate(bb%c2)
print *, "PASS"
end
