function proc() result(i)
  i = 100
end function

type str
  sequence
  integer::st1
  procedure(x),nopass,pointer::p
end type
procedure(x) :: proc

interface
  function x() result(i)
  end function
end interface

type(str) :: sss1
sss1%p=>proc
if ( 100 .ne. sss1%p() ) print *,'fail'
print *,'pass '
end
