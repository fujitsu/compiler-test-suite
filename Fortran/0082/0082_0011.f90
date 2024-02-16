module m0
  integer::k=2
  integer,parameter::n=2
private
public:: ss1,n
 interface
 module subroutine ss1(i,c,ca)
  integer :: i(k)
  character(k) :: c 
  character(k) :: ca(k)
 end
 end interface
end
use m0
  integer :: i(n)
  character(n) :: c 
  character(n) :: ca(n)
call ss1(i,c,ca)
  if (any(i/=[1,2])) print *,701
  if (   ( c/='12')) print *,7021
  if (any(ca/=['34','56'])) print *,7031
print *,'pass'
end
submodule(m0) smod
 contains
 module procedure  ss1
  if (size(i)/=2 ) print *,201
  if (len (ca)/=2 ) print *,202
  if (size(ca)/=2 ) print *,203
  i=[1,2]
   c='12'
   ca=['34','56']
 end
 end

