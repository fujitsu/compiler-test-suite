function x1(i) result(r)
  character(i),pointer::r
  allocate(r)
  r = "abcde"
end function

module mod00
  contains
  function px6() result(r)
    interface 
      function x1(i) result(r)
        character(i),pointer::r
      end function
    end interface
    procedure (x1),pointer :: r
    r=>x1
  end function
end
use mod00
interface 
  function x1(i) result(r)
    character(i),pointer::r
  end function
end interface
procedure (x1),pointer :: ppp
ppp=>px6()
if ( "abcde" .ne. ppp(5)) print *,'fail'
print *,'pass '
end
