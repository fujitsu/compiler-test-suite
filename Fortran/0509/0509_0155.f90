module t
type a
  integer::x
end type
end
module m0
use t
interface
 function x2(i) result(p)
      character(i),pointer::p
  end function
 function z2(i) result(p)
    use t
      type(a)     ,pointer::p
  end function
end interface
end
module mod
use m0
   procedure (y),pointer :: p
   procedure (z),pointer :: q
 contains
 function z() result(p1)
   procedure (z2),pointer :: p1
   p1=>z2
 end function
 function y() result(p2)
   procedure (x2),pointer :: p2
   p2=>x2
 end function
end

subroutine s1
use mod
p=>y
if (cp(bp(p())))print *,9001
q=>z
if (cq(bq(q())))print *,9002
contains
function bp(b) result(r)
   procedure (x2),pointer :: b 
   character(2)::r
r=b(2)
end function
function   cp(d) result(r)
logical::r
character(*)::d
r=.false.
if (d/='12') r=.true.
end function
function bq(b) result(r)
   procedure (z2),pointer :: b 
type(a)::r
r=b(2)
end function
function   cq(d) result(r)
logical::r
type(a)::d
r=.false.
if (d%x/=1) print *,8002
end function
end 

call s1
print *,'pass'
end
 function x2(i) result(r)
      character(i),pointer::r
      allocate(r)
      r='12'
  end function
 function z2(i) result(p)
    use t
      type(a)     ,pointer::p
     allocate(p)
     p%x=i-1
  end function
