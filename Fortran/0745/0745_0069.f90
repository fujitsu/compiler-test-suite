integer:: S(3)
integer:: Z2(4)=(/11,12,13,14/),x(4)=(/1,2,3,4/)
S=(/1,2,3/)
call sub01(S,Z2)
if (any(S/=(/1,11,12/)))print *,'error-1'
print *,'pass'
contains
SUBROUTINE SUB01(S,Z2)
integer :: S(3),Z2(*)
S(2:3) = (/Z2(1),Z2(S(2))/)
END SUBROUTINE
END 
