subroutine test(nnn,iii)
interface 
 function nnn()
  character(3) :: nnn
 end function
 function ifun()
  character(3) :: ifun
 end function
end interface
procedure(ifun),pointer :: iii
character(3)::kkk
kkk=nnn()
if (kkk/='123')print *,'error-2'
kkk=iii()
if (kkk/='123')print *,'error-4'
if (iii()/='123')print *,'error-5'
end subroutine
interface
 function ifun()
  character(3) :: ifun
 end function
end interface
interface
  subroutine test(nnn,iii)
    interface 
     function nnn()
      character(3) :: nnn
     end function
     function ifun()
      character(3) :: ifun
     end function
    end interface
    procedure(ifun),pointer :: iii
  end subroutine
end interface
procedure(ifun),pointer :: ipp
ipp=>ifun
call test(ipp,ipp)
print *,"pass"
end
 function ifun()
  character(3) :: ifun
  ifun='123'
 end function
