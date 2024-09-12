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
type ty
   procedure (y1),nopass,pointer :: px1
   procedure (z1),nopass,pointer :: py1
   procedure (x1),nopass,pointer :: pz1
   procedure (y2),nopass,pointer :: px2
   procedure (z2),nopass,pointer :: py2
   procedure (x2),nopass,pointer :: pz2
end type
type(ty)::v
 contains
subroutine s()
type ty
   procedure (x1),nopass,pointer :: px1
   procedure (y1),nopass,pointer :: py1
   procedure (z1),nopass,pointer :: pz1
   procedure (x2),nopass,pointer :: px2
   procedure (y2),nopass,pointer :: py2
   procedure (z2),nopass,pointer :: pz2
end type
type(ty)::v
if (x1()/=1)print *,1001
if (y1()/='1')print *,1001
if (ck(z1()))print *,1001
v%px1=>x1
if (v%px1()/=1)print *,1001
v%px2=>x2
if (v%px2()/=1)print *,1002
v%py1=>y1
if (v%py1()/='1')print *,1001
v%py2=>y2
if (v%py2()/='1')print *,1002
v%pz1=>z1
if (ck(v%pz1()))print *,1012
v%pz2=>z2
if (ck(v%pz2()))print *,1012
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
v%pz1=>x1
if (v%pz1()/=1)print *,1001
v%pz2=>x2
if (v%pz2()/=1)print *,1002
v%px1=>y1
if (v%px1()/='1')print *,1001
v%px2=>y2
if (v%px2()/='1')print *,1002
v%py1=>z1
if (ck(v%py1()))print *,1012
v%py2=>z2
if (ck(v%py2()))print *,1012
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
