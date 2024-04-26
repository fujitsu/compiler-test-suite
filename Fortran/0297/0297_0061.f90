program main
integer i(1)
real(kind=8) d
d = 1.0
call sub(d,i)
print *,i(1)
end program main

subroutine sub(d,i)
integer i(1)
real(kind=8) d
i(1) = int(d)
i(1) = i(1) + 10
end subroutine sub
