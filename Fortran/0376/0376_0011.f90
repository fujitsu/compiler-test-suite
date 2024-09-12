interface
 function ifun()
  character(3) :: ifun
 end function
end interface
procedure(ifun),pointer :: ipp
ipp=>ifun
call test(ipp)
print *,"pass"
contains
subroutine test(iii)
interface 
 function ifun()
  character(3) :: ifun
 end function
end interface
procedure(ifun),pointer :: iii
character(3)::kkk
if (kkk()/='123')print *,'error'
if (iii()/='123')print *,'error'
end subroutine
end
 function ifun()
  character(3) :: ifun
  ifun='123'
 end function
 function kkk()
  character(3) :: kkk
  kkk='123'
 end function
