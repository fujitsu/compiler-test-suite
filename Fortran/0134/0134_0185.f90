module mod0
contains
 subroutine z(arg,arg2) 
   interface 
     function x1(i) result(r)
      character(i+i),pointer::r
     end function
   end interface
 entry      z2(arg,arg2) 
   procedure (x1),pointer :: arg,arg2
 entry      z3(arg,arg2) 
   character(4)::c
   arg=>x1
   if (arg(2)/='1234')print *,1
   c=arg(2)
   if (c/='1234')print *,2
   arg2=>x1
   if (arg2(2)/='1234')print *,4
   c=arg2(2)
   if (c/='1234')print *,5
 end subroutine
end
subroutine s1
use mod0
   interface 
     function x1(i) result(r)
      character(i+i),pointer::r
     end function
   end interface
   procedure (x1),pointer :: p,p2
call z(p,p2)
if (p(2)/='1234')print *,3
if (p2(2)/='1234')print *,6
nullify(p,p2)
call z2(p,p2)
if (p(2)/='1234')print *,13
if (p2(2)/='1234')print *,16
nullify(p,p2)
call z3(p,p2)
if (p(2)/='1234')print *,23
if (p2(2)/='1234')print *,26
nullify(p,p2)
end
call s1
print *,'pass'
end
     function x1(i) result(r)
      character(i+i),pointer::r
      allocate(r)
      r='1234'
     end function
