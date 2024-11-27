module mod
contains
 subroutine sub()
 end subroutine
 subroutine sub1(i)
 end subroutine
end 
use mod
procedure(sub1):: sss
interface aaa
 procedure  sub
 procedure  sss
end interface
end

