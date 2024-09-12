interface
function ifun() result(ii)
pointer :: ii
end function
end interface
if(1.eq.2)call sub(ifun)
print *,"pass"
contains
subroutine sub(ii)
procedure(),pointer,intent(in) :: ii
end subroutine
end

function ifun() result(ii)
pointer :: ii
end function
