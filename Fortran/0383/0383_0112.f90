module mod0
  interface 
    function x1(i) result(r)
      character(i),pointer::r
    end function
  end interface
  integer::i=2
  contains
  function px6() result(r)
    entry    px7() result(r)
      interface 
        function x1(i) result(r)
          character(i),pointer::r
        end function
      end interface
    procedure (x1),pointer :: r
    r=>x1
  end function

  subroutine ss(p)
    procedure (x1),pointer :: p
    if (p(i)/='xy') print *,'fail'
  end subroutine

  subroutine st(p)
    procedure (x1)         :: p
    if (p(i)/='xy') print *,'fail'
  end subroutine
end

subroutine z
use mod0
procedure (x1),pointer :: p1
p1=>px6()
if (p1(i)/='xy') print *,'fail'
p1=>px7()
if (p1(i)/='xy') print *,'fail'
call ss(p1)
call ss(px6())
call ss(px7())
call st(p1)
call st(px6())
call st(px7())
end

call z
print *,'pass '
end

function x1(i) result(r)
  character(i),pointer::r
  allocate(r)
  r='xy'
end function
