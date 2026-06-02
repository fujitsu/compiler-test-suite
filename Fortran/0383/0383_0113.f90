module mod02
  contains
  function ifun(i)
    character(i+2):: ifun
    ifun = "aaa"
  end function
end module

use mod02
procedure(ifun),pointer:: p
p=>ifun
if ( "aaa" .ne. p(1) ) print *,'fail'
print *,'pass '
end
