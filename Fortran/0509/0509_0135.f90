module mt
 type t
   integer::tt
 end type
end
module m0
 use mt
interface
 function x1() result(r)
      integer::r
  end function
 function y1() result(r)
      character::r
  end function
 function z1() result(r)
      import::t
      type(t)::r
  end function
end interface
contains
 function x2() result(r)
      integer::r
   r=1
  end function
 function y2() result(r)
      character::r
   r='1'
  end function
 function z2() result(r)
      type(t)::r
   r%tt=1
  end function
end
module mod
use m0
   procedure (y1),pointer :: px1
   procedure (z1),pointer :: py1
   procedure (x1),pointer :: pz1
   procedure (y2),pointer :: px2
   procedure (z2),pointer :: py2
   procedure (x2),pointer :: pz2
 contains
subroutine s()
   procedure (x1),pointer :: px1
   procedure (y1),pointer :: py1
   procedure (z1),pointer :: pz1
   procedure (x2),pointer :: px2
   procedure (y2),pointer :: py2
   procedure (z2),pointer :: pz2
if (x1()/=1)print *,1001
if (y1()/='1')print *,1001
if (ck(z1()))print *,1001
px1=>x1
if (px1()/=1)print *,1001
px2=>x2
if (px2()/=1)print *,1002
py1=>y1
if (py1()/='1')print *,1001
py2=>y2
if (py2()/='1')print *,1002
pz1=>z1
if (ck(pz1()))print *,1012
pz2=>z2
if (ck(pz2()))print *,1012
end subroutine
function ck(d) result(r)
 logical::r
 type(t),intent(in)::d
 r=.false.
 if (d%tt/=1)r=.true.
end function
end

subroutine s1
use mod
if (x1()/=1)print *,1001
if (y1()/='1')print *,1001
if (ck(z1()))print *,1001
pz1=>x1
if (pz1()/=1)print *,1001
pz2=>x2
if (pz2()/=1)print *,1002
px1=>y1
if (px1()/='1')print *,1001
px2=>y2
if (px2()/='1')print *,1002
py1=>z1
if (ck(py1()))print *,1012
py2=>z2
if (ck(py2()))print *,1012
end 

call s1
print *,'pass'
end
 function x1() result(r)
      integer::r
   r=1
  end function
 function y1() result(r)
      character::r
   r='1'
  end function
 function z1() result(r)
use mt
      type(t)::r
   r%tt=1
  end function
