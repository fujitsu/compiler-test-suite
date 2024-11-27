module m1
contains 
subroutine s1()

integer :: xy
xy=10
block
integer :: var 
print*, var
end block
end subroutine
end module 

print*, "pass"
end

