interface
function ifun()
end function
end interface
call sub(ifun)
contains
subroutine sub(ii)
procedure(),pointer,intent(in) :: ii
print *,ii()
end subroutine
end

function ifun()
ifun=10
end function

