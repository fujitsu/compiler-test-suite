module mod
interface
   function fax() result(r) bind(c)
     character(1)::r
   end function
end interface
contains
subroutine t1(fx6)
 procedure(fax),bind(c)        ::fx6
 procedure(fax),bind(c),pointer ::fx6p
 procedure(fax),bind(c,name='xyz')        ::fy
 procedure(fax)                ::fx7
fx6p=>fx6
if (fx6()/='x')print *,101
if (fx6p()/='x')print *,102
fx6p=>fy
if (fy()/='x')print *,103
if (fx6p()/='x')print *,104
fx6p=>fx7
if (fx7()/='x')print *,105
if (fx6p()/='x')print *,106
end subroutine

subroutine t0
 call t1(fax)
end subroutine

end
   function fax() result(r) bind(c)
   entry fy() result(r) bind(c,name='xyz')
   entry fx7() result(r) bind(c)
     character(1)::r
     r='x'
   end function

use mod

call t0
print *,'pass'
end
