module m1
contains 
subroutine s1()

integer :: xy
xy=10
block
integer :: var
var = 10
end block
end subroutine
end module 

print*, "pass"
end

