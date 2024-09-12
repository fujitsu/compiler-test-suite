module m
contains
recursive subroutine sub(y)
  procedure(sub),pointer :: p1=>sub
  procedure(sub),pointer :: p2
  integer::y
  procedure(sub):: proc1
  
  p2=>sub
  print*,"sub PASS"
  if(y.ne.1)then
    call p1(y-1)
    call p2(y-1)
    call sub(y-1)
  end if
end 
end 
use m
procedure(sub),pointer :: p1=>sub
call sub(3)
call p1(3)
print*,"pass"
end

