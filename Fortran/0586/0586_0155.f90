interface
 function ifunc01() result(irst01)
  integer :: irst01
 end function
end interface

procedure(ifunc01), pointer :: p => ifunc01
integer::a
if(associated(p).neqv..true.)print*,"103"
a = p()
if(a.ne.30)print*,"101",a
print*,"pass"
end
 function ifunc01() result(irst01)
  integer :: irst01
  irst01 =30
 end function
