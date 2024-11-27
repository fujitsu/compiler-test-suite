integer:: S(3)
integer:: Z2(1,1,1,1,1,1,4)
Z2(1,1,1,1,1,1,:)=(/11,12,13,14/)
S=(/1,2,3/)
call sub02(S,Z2)
if (any(S/=(/1,14,12/)))print *,'error-2'
print *,'pass'
contains
SUBROUTINE SUB02(S,Z2)
integer :: S(3),Z2(1,1,1,1,1,1,*),X(4)
X(2)=2
S(2:3) = (/Z2(1,1,1,1,1,1,4),Z2(1,1,1,1,1,1,X(2))/)
END SUBROUTINE
END 
