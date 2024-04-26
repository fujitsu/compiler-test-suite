module mod
type  t1
 integer,private :: i=1
end type
type ,extends(t1):: t2
 integer :: j
end type

type (t2),save :: str
type (t2),parameter  :: p = t2(t1(2),3)
contains
subroutine ss
str=t2(t1(2),3)
if(str%i/=2)print *,101
if(str%t1%i/=2)print *,102
if(str%j/=3)print *,103
end subroutine ss
end
 use mod
call ss
print *,'pass'
end

