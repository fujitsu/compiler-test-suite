program main
type t1
   class(t1), pointer:: c1
endtype
type (t1) :: aa
allocate(aa%c1)
print *, "PASS"
end
