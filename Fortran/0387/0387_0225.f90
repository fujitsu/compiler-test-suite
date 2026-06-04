module mod1
interface operator(+)
  function int_num(i1,l1)
   integer, intent(in)::i1
   logical, intent(in)::l1
  end function
  function real_num(r1, l2)
   real, intent(in)::r1
   logical, intent(in)::l2
  end function real_num
end interface
end
use mod1
procedure(int_num) ,pointer :: p1
procedure(real_num) ,pointer :: p2
integer :: i1, i2
logical :: j1
real :: r1, r2
j1=.false.
p1=>int_num
p2=>real_num
i2 = p1(i1, j1)
r2 = p2(r1, j1)
if (i2.ne.3) print *,'fail'
if (r2.ne.2.e0) print *,'fail'
print *,"pass"
end

  function int_num(i1,l1)
   integer, intent(in)::i1
   logical, intent(in)::l1
   int_num =3   
  end function
  function real_num(r1, l2)
   real, intent(in)::r1
   logical, intent(in)::l2
   real_num =2.e0
  end function
