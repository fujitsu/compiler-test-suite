module mod1
type tt
 character(len=4)::st1,st2
 character(len=8)::st
end type
end module

use mod1
interface operator(//)
 function cat(a,b)
  import tt
  type(tt),intent(in) :: a,b
  type(tt)::cat
 end function
end interface operator(//)

type(tt) :: obj

obj%st1='xxpa'
obj%st2='ssxx'
associate(aa=>(obj%st1//obj%st2))
 if(aa/='xxpassxx') print*,101
 print*,aa(3:6)
end associate
end

 function cat(a,b)
  use mod1
  type(tt),intent(in) :: a,b
  type(tt)::cat

  cat%st = a%st1//b%st2
 end function
