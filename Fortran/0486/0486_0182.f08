interface
subroutine sub3(cc) 
type(*):: cc(*)
end subroutine 
end interface

character(4) :: aa='1234'
call sub3(aa)
print*,"pass"
end

subroutine sub3(cc) 
type(*):: cc(*)
if (lbound(cc,1)/=1) print *,101
end subroutine 
