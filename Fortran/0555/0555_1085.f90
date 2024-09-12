module mod1
type ty
 double precision::dp
endtype
end module

program main
use mod1
interface operator(*)
function mul(a,b)
 import ty
 class(ty),intent(in) :: a,b
 type(ty) :: mul
end function
end interface operator(*)

  type(ty) :: r,area,am
  type(ty),target :: tgt
  class(ty),pointer :: src

  area(r)= r
  tgt%dp=45.53
  src=>tgt

  am=area(src)
  if(int(am%dp)==45)  print*,'PASS'
end

function mul(a,b)
 use mod1
 class(ty),intent(in) :: a,b
 type(ty) :: mul
   mul%dp=a%dp*b%dp
end function
