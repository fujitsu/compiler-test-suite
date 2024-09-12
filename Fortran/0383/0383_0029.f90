module mod
procedure(),pointer:: a
end 

use mod
interface 
function ifun()
end function
subroutine isub()
end subroutine
end interface
a=>isub
call a()
end

subroutine isub()
print *,'pass'
end

