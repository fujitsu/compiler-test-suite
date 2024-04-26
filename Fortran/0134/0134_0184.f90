module mod0
contains
 function px6() result(r)
   interface 
     function x1(i) result(r)
      character(i+i),pointer::r
     end function
   end interface
   procedure (x1),pointer :: r
   character(4)::c
 entry    px7() result(r)
 entry    px8() result(r)
   r=>x1
   if (r(2)/='1234')print *,1
   c=r(2)
   if (c/='1234')print *,2
 end function
end
subroutine s1
use mod0
   interface 
     function x1(i) result(r)
      character(i+i),pointer::r
     end function
   end interface
   procedure (x1),pointer :: p
p=>px6()
if (p(2)/='1234')print *,3
p=>px7()
if (p(2)/='1234')print *,4
p=>px8()
if (p(2)/='1234')print *,5
end
call s1
print *,'pass'
end
     function x1(i) result(r)
      character(i+i),pointer::r
      allocate(r)
      r='1234'
     end function
