interface assignment(=)
  subroutine int_num(i1, i2)
   integer, intent(out)::i1
   logical, intent(in)::i2
  end subroutine int_num
  subroutine real_num(r1, r2)
   real, intent(out)::r1
   logical, intent(in)::r2
  end subroutine real_num
end interface

procedure(int_num) ,pointer :: p1
procedure(real_num) ,pointer :: p2
integer :: i1, i2
logical :: j1
real :: r1, r2
j1=.false.
p1=>int_num
p2=>real_num
call p1(i1, j1)
call p2(r1, j1)
if (i1.ne.10) print *,'fail'
if (r1.ne.10.e0) print *,'fail'
print *,"pass"
end

  subroutine int_num(i1, i2)
   integer, intent(out)::i1
   logical, intent(in)::i2
   i1=10
  end subroutine
  subroutine real_num(r1, r2)
   real, intent(out)::r1
   logical, intent(in)::r2
   r1=10.e0
  end subroutine
