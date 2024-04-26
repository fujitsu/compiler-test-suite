call zee(a,b)
print *,'pass'
contains
subroutine zee (x,y,z)
implicit none
real, intent(inout) :: x, y
real, intent(in), optional :: z
logical r
r = present(z)
if(r.neqv..false.) print *,'err'
end subroutine
end
