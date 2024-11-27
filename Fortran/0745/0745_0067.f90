integer:: S(3)
integer:: Z2(4)=(/11,12,13,14/),x(4)=(/1,2,3,4/)
S=(/1,2,3/)
call sub01(S,Z2)
if (any(S/=(/1,11,12/)))print *,'error-1'
S=(/1,2,3/)
call sub02(S,Z2,1)
if (any(S/=(/1,11,13/)))print *,'error-2'
S=(/1,2,3/)
call sub03(S,Z2,1)
if (any(S/=(/1,11,13/)))print *,'error-3'
S=(/1,-2,3/)
call sub04(S,Z2)
if (any(S/=(/1,11,12/)))print *,'error-4'
S=(/1,2,3/)
call sub05(S,Z2,1)
if (any(S/=(/1,11,14/)))print *,'error-5'
S=(/1,2,3/)
call sub11(S,Z2)
if (any(S/=(/1,11,12/)))print *,'error-11'
S=(/1,2,3/)
call sub12(S,Z2,1)
if (any(S/=(/1,11,12/)))print *,'error-12'
S=(/1,2,3/)
call sub13(S,Z2,1)
if (any(S/=(/1,11,12/)))print *,'error-13'
S=(/1,-2,3/)
call sub14(S,Z2)
if (any(S/=(/1,11,12/)))print *,'error-14'
S=(/1,2,3/)
call sub15(S,Z2,1)
if (any(S/=(/1,11,12/)))print *,'error-15'
S=(/1,2,3/)
call sub21(S,Z2)
if (any(S/=(/1,11,13/)))print *,'error-21'
S=(/1,2,3/)
call sub22(S,Z2,1)
if (any(S/=(/1,11,13/)))print *,'error-22'
S=(/1,2,3/)
call sub23(S,Z2,1)
if (any(S/=(/1,11,13/)))print *,'error-23'
S=(/1,-2,3/)
call sub24(S,Z2)
if (any(S/=(/1,11,13/)))print *,'error-24'
S=(/1,2,3/)
call sub25(S,Z2,1)
if (any(S/=(/1,11,13/)))print *,'error-25'
print *,'pass'
contains
SUBROUTINE SUB01(S,Z2)
integer :: S(3),Z2(*)
S(2:3) = (/Z2(1),Z2(S(2))/)
END SUBROUTINE
SUBROUTINE SUB02(S,Z2,i)
integer :: S(3),Z2(*)
S(2:3) = (/Z2(1),Z2(i+S(2))/)
END SUBROUTINE
SUBROUTINE SUB03(S,Z2,i)
integer :: S(3),Z2(*)
S(2:3) = (/Z2(1),Z2(S(2)+i)/)
END SUBROUTINE
SUBROUTINE SUB04(S,Z2)
integer :: S(3),Z2(*)
S(2:3) = (/Z2(1),Z2(-S(2))/)
END SUBROUTINE
SUBROUTINE SUB05(S,Z2,i)
integer :: S(3),Z2(*)
S(2:3) = (/Z2(1),Z2(i+i+S(2))/)
END SUBROUTINE
SUBROUTINE SUB11(S,Z2)
integer :: S(3),Z2(*)
S(2:3) = (/Z2(1),Z2(x(S(2)))/)
END SUBROUTINE
SUBROUTINE SUB12(S,Z2,i)
integer :: S(3),Z2(*)
S(2:3) = (/Z2(1),Z2(x(i+S(2)-1))/)
END SUBROUTINE
SUBROUTINE SUB13(S,Z2,i)
integer :: S(3),Z2(*)
S(2:3) = (/Z2(1),Z2(x(S(2)+i-1))/)
END SUBROUTINE
SUBROUTINE SUB14(S,Z2)
integer :: S(3),Z2(*)
S(2:3) = (/Z2(1),Z2(x(-S(2)))/)
END SUBROUTINE
SUBROUTINE SUB15(S,Z2,i)
integer :: S(3),Z2(*)
S(2:3) = (/Z2(1),Z2(x(i+i+S(2)-2))/)
END SUBROUTINE
SUBROUTINE SUB21(S,Z2)
integer :: S(3),Z2(*)
S(2:3) = (/Z2(1),1+Z2(x(S(2)))/)
END SUBROUTINE
SUBROUTINE SUB22(S,Z2,i)
integer :: S(3),Z2(*)
S(2:3) = (/Z2(1),1+Z2(x(i+S(2)-1))/)
END SUBROUTINE
SUBROUTINE SUB23(S,Z2,i)
integer :: S(3),Z2(*)
S(2:3) = (/Z2(1),1+Z2(x(S(2)+i-1))/)
END SUBROUTINE
SUBROUTINE SUB24(S,Z2)
integer :: S(3),Z2(*)
S(2:3) = (/Z2(1),1+Z2(x(-S(2)))/)
END SUBROUTINE
SUBROUTINE SUB25(S,Z2,i)
integer :: S(3),Z2(*)
S(2:3) = (/Z2(1),1+Z2(x(i+i+S(2)-2))/)
END SUBROUTINE
END 
