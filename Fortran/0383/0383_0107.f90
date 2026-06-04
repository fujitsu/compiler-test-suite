module m1
  contains
  subroutine t2(iii)
  interface
    function ifun()
    end function
  end interface
  procedure(ifun),pointer :: iii
  kkk=iii()
  if (kkk/=123) print *,'fail'
  if (iii()/=123) print *,'fail'
  end subroutine
end

use m1
interface
  function ifun()
  end function
end interface
procedure(ifun),pointer :: kpp
kpp=>ifun
call t2(kpp)
print *,"pass "
end

function ifun()
  ifun=123
end function 
