subroutine s1()
block
integer :: var
var = 10
end block
end subroutine

call s1
print*, "pass"
end

