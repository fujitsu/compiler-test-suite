module m
    procedure(cpqr),pointer ::cptr 
    character(len=14), target::ctar(2)="internalfiless"
contains
        function cpqr()
        character(len=14), pointer::cpqr(:)
        cpqr=>ctar
        end function
end module

use m
character(len=14) :: x(2)="internalfiless"
character(len=7) :: val(2)="proces"
cptr=>cpqr
write(x,*)val
write(cptr(),*)val
if(any(x .ne. ctar))print*,"101"
print*,"Pass"
end
