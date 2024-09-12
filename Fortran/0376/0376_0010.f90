interface
 function ifun(i)
  character(i+3) :: ifun
 end function
end interface
procedure(ifun),pointer :: ipp
ipp=>ifun
call test(ipp)
print *,"pass"
contains
subroutine test(iii)
interface 
 function ifun(i)
  character(i+3) :: ifun
 end function
end interface
procedure(ifun),pointer :: iii
if (iii(1)/='1234')print *,'error'
end subroutine
end
 function ifun(i)
  character(i+3) :: ifun
  ifun='1234'
 end function
