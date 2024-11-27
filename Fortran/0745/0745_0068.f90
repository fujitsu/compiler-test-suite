integer :: S(5,4,3,2),Z(5,4,3,2)
Z(4,3,2,1)=100
call sub01(S,Z,4,3,2,1)
if (any(S(4,3,2:3,2)/=100))print *,'error-1'
print *,'pass'
contains
SUBROUTINE SUB01(S,Z,i4,i3,i2,i1)
integer :: S(5,4,3,2),Z(5,4,3,2)
S(i4,i3,2:3,i2) = (/Z(i4,i3,i2,i1),Z(i4,i3,2:2,i1)/)
END SUBROUTINE
END 
