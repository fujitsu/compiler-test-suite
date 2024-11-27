subroutine s1()
block
integer :: var
print*, var
end block
end subroutine

call s1()
print*, "pass"
end

