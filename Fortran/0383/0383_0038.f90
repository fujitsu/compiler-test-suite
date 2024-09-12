module mod1
 contains
  function m1func1(i4_01) result(rst1)
   integer(kind=4) :: i4_01
   integer(kind=4) :: rst1
   rst1 = i4_01
  end function
  function m1func2(i4_01,pm1f1) result(rst2)
   integer(kind=4) :: i4_01
   procedure(m1func1),pointer :: pm1f1
   integer(kind=4) :: rst2
   rst2 = pm1f1(i4_01)
  end function
  function m1func3(i4_01,pm1f2) result(rst3)
   integer(kind=4) :: i4_01
   procedure(m1func2),pointer :: pm1f2
   integer(kind=4) :: rst3
   procedure(m1func1),pointer :: pm1f1
   pm1f1 => m1func1
   rst3 = pm1f2(i4_01,pm1f1)
  end function
end module

use mod1

procedure(m1func2),pointer :: p2
procedure(m1func3),pointer :: p3
integer :: i

p2 => m1func2
p3 => m1func3

if (associated(p3,m1func3).eqv..true.) then
 if (associated(p2,m1func2).eqv..true.) then
  i = p3(1,p2)
 else
  i = 1
 end if
else
 if (associated(p2,m1func2).eqv..true.) then
  i = m1func3(1,p2)
 else
  i = 1
 end if
end if

if (i.ne.1) print *,'not pass'

print *,'pass'

end
