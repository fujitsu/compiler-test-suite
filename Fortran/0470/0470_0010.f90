module mod 
contains 
  function  ifun() 
    integer ifun 
    ifun= 10 
  end function ifun 
end module mod  

use mod 
integer ret 
procedure(ifun),pointer :: p=>ifun
print *,'pass'

ret = ifun() 

ret = p() 

end 
