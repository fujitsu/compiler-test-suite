module m1
type ty
procedure(ifun),nopass,pointer::fptr
end type

integer,target :: trg = 4
type(ty)::obj(1,2)
contains
        function ifun()
        integer,pointer :: ifun
        ifun=>trg
        end function
end

program main
use m1
obj(1,2)%fptr=>ifun
obj(1,2)%fptr()=1000
if(trg /= 1000) print *,101
call test03

contains
        subroutine test03()
!        ifun()=1  !! statement function
        if(trg .ne. 1000) print*,"121"
!        if(ifun().ne. 1) print*,"122"  !! resolve with statement function
        print*,"Pass"
        end subroutine
end