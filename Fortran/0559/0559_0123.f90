PROGRAM main

type ty(k)
  integer,kind :: k
  integer :: ii(k)
end type

type(ty(2)) :: obj 
call sub(obj)
contains
subroutine sub(d)
type(ty(2)) :: d
if(size(d%ii).EQ.2) then 
print*,'PASS'
else
print*,'ERROR'
endif
end subroutine

end program


