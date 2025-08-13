call ss1(-3)
print *,'pass'
end
subroutine ss1(i)
real(4)::d(i)
call chk1(d)
contains
 subroutine chk1(b)
 real(4),dimension(:)::b
 write(33,*)'test'
 if (any(shape(b)/=(/0/)))write(6,*) "NG"
 end subroutine
end
