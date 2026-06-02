interface
 recursive function  ifunc01(x) result(irst01)
  integer,pointer :: irst01
  integer::x
 end function
end interface
procedure(ifunc01), pointer :: p => ifunc01
integer::num
num =10
if(associated(p).neqv..true.)print*,"103"
if( p(num).ne.10) print*,"101"
print*,"PASS"
end
 recursive function ifunc01(x) result(irst01)
  integer,pointer :: irst01
  integer::x
  procedure(ifunc01), pointer :: p => ifunc01
  allocate(irst01)
  irst01 = 10
  if(x.le.20) then
  print*,"PASS ifunc01",x
  x = x+1
  if( p(x).ne.10) print*,"101"
  end if
 end function
