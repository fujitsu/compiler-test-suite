interface
 subroutine sub1(a)
  integer a
 end subroutine
 function func1() result(rst)
  integer :: rst
 end function
 function func2() result(rst)
  procedure(iabs),pointer :: rst
 end function
 function func(p1,p2) result(rst)
  interface
   subroutine sub1(a)
    integer a
   end subroutine
   function func2() result(rst)
    procedure(iabs),pointer :: rst
   end function
  end interface
  procedure(integer),pointer, optional :: p1
  procedure(sub1),pointer,optional :: p2
  procedure(),pointer :: rst
  logical :: l1
  logical :: l2
 end function
end interface

integer :: i
procedure(sub1),pointer :: ps
procedure(func1),pointer :: pf
procedure(),pointer :: pp
pf => func1
pp => func(pf,ps) 

i = pp(100)

print *,'pass'

end

subroutine sub1(a)
 integer a
 if (a.ne.1) then
  a = 1
 endif
end subroutine
function func1() result(rst)
 integer :: rst
 rst= 1
end function
function func2() result(rst)
 intrinsic :: iabs
 procedure(iabs),pointer :: rst
 rst=>iabs
end function
function func(p1,p2) result(rst)
 interface
  subroutine sub1(a)
   integer a
  end subroutine
  function func2() result(rst)
   procedure(iabs),pointer :: rst
  end function
 end interface
 procedure(integer),pointer,optional :: p1
 procedure(sub1),pointer,optional :: p2
 procedure(),pointer :: rst
 logical :: l1
 logical :: l2
 l1 = present(p1)
 l2 = present(p2)
 if (l1.eqv..true.) then
   rst => p1
 else
  if (l2.eqv..true.) then
   rst => p2
  else
   rst => null()
  end if
 endif
end function
