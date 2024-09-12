interface
 function ifunc01(a) result(irst01)
  integer::a
  integer :: irst01
 end function
 subroutine sub(b,c)
  integer::b
  integer::c
 end subroutine

end interface

procedure(ifunc01), pointer :: p => ifunc01
procedure(), pointer :: p2
integer::a
 p => ifunc01
 p2=>sub
if(associated(p).neqv..true.)print*,"103"
if(associated(p2).neqv..true.)print*,"103"
a = p(10)
if(a.ne.40)print*,"101",a
call p2(6,4)
print*,"pass"
end
 function ifunc01(a) result(irst01)
  integer ::a
  integer :: irst01
  irst01 = a +30
 end function
subroutine sub(b,c)
  integer::b
  integer::c
  integer::d
  d =b +c
  if(d.ne.10)print*,"105"
end subroutine
