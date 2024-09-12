type ty0(k1)
  integer, kind :: k1
  integer ::arr
end type
call sub([ty0(2)(5), ty0(2)(6)])
contains
subroutine sub(dmy)
type(ty0(2)) ::dmy(2)
if(dmy%k1 /= 2)then
print*, "Error"
else
print*,"pass"
endif
end subroutine
end

