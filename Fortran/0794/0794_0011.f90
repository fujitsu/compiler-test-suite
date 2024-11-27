module test
 implicit none
  private p
  procedure(),pointer:: p=> null()
integer:: x=1
contains
subroutine ss
p=> sss
call p
end subroutine
subroutine sss
if (x/=1) print *,21
x=2
end subroutine
end
subroutine sub
use test
call ss
if (x/=2) print *,20
end
call sub
print *,'pass'
end
