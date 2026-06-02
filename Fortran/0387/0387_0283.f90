interface
 function func1(i) result(j)
  character i,j
  optional :: i
 end function
 subroutine sub1(i,j)
  integer :: i,j
  optional :: i,j
 end subroutine
end interface

procedure(sub1), pointer :: pp
procedure(func1),pointer :: pf1,pf2
procedure(),pointer :: paa

character :: c1,c2
intrinsic sin
paa=>sin
pf1=>func1
if (pf1().ne."a") print *,'fail'
if (pf1("a").ne."a") print *,'fail'
pp=>sub1
call pp(1,2)
call pp(1)
call pp()
print *,"pass"

end
 subroutine sub1(i,j)
  integer :: i,j
  optional :: i,j
 end subroutine
 function func1(i) result(j)
  character :: i,j
  optional :: i
  j="a"
 end function
