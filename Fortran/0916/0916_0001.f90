module m
contains
subroutine modsub1()
  integer,target::tarmain =20
  integer,pointer::pm1=>tarmain
  if(associated(pm1).neqv..true.)print*,"101"
end subroutine
end module
use m
end

