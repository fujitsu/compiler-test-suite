interface
 function ifun(i)
  character(i+3) :: ifun
 end function
end interface
procedure(ifun),pointer :: ipp
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
end subroutine
end
