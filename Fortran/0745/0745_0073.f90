integer:: S(3)
integer:: Z2(1,1,1,1,1,1,4)
Z2(1,1,1,1,1,1,:)=(/11,12,13,14/)
S=(/1,2,3/)
call sub01(S,Z2,-1)
if (any(S/=(/1,14,12/)))print *,'error-1'
S=(/1,2,3/)
call sub02(S,Z2,-1)
if (any(S/=(/1,14,12/)))print *,'error-2'
S=(/1,2,3/)
call sub11(S,Z2,1)
if (any(S/=(/1,-14,-12/)))print *,'error-3'
S=(/1,2,3/)
call sub12(S,Z2,1)
if (any(S/=(/1,-14,-12/)))print *,'error-4'
print *,'pass'
contains
SUBROUTINE SUB01(S,Z2,i)
integer :: S(3),Z2(1,1,1,1,1,1,*)
S(2:3) = (/1+i+j(Z2(1,1,1,1,1,1,4)),1+i+j(Z2(1,1,1,1,1,1,S(2)))/)
END SUBROUTINE
SUBROUTINE SUB02(S,Z2,i)
integer :: S(3),Z2(1,1,1,1,1,1,*),X(4)
X(2)=2
S(2:3) = (/1+i+j(Z2(1,1,1,1,1,1,4)),1+i+j(Z2(1,1,1,1,1,1,X(2)))/)
END SUBROUTINE
SUBROUTINE SUB11(S,Z2,i)
integer :: S(3),Z2(1,1,1,1,1,1,*)
S(2:3) = (/-Z2(1,1,1,1,1,1,4),-Z2(1,1,1,1,1,1,j(S(2)))/)
END SUBROUTINE
SUBROUTINE SUB12(S,Z2,i)
integer :: S(3),Z2(1,1,1,1,1,1,*),X(4)
X(2)=2
S(2:3) = (/-j(Z2(1,1,1,1,1,1,4)),-j(Z2(1,1,1,1,1,1,X(2)))/)
END SUBROUTINE
END 
function j(k)
j=k
end
