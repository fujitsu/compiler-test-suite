type ty0(k1)
  integer, kind :: k1
  integer ::arr
end type
call sub([ty0(8)(5), ty0(8)(6)]) 
contains
subroutine sub(dmy)
type(ty0(8)) ::dmy(2)
if(dmy%k1 /= 8) then 
print*, "Error"
else
print*,"pass"
end if
end subroutine
end

