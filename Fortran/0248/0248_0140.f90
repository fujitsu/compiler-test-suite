INTERFACE 
function mup(c)  
  real :: c
  real,pointer :: mup
END function 
END INTERFACE

PROCEDURE(mup),pointer :: ptr=>NULL()
ptr=>mup

call s(NULL(ptr(2.0)))
contains

subroutine s(d)
real,optional :: d
if(present(d) .eqv. .false.) print*,'pass'
end subroutine
end

function mup(c)  
  real :: c
  real,pointer :: mup
  allocate(mup)
  mup = c+2
END function 
