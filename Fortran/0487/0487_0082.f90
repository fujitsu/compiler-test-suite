module m1
integer,target:: k=1,ka(2)=1
interface gen
  procedure t1,t2
end interface
contains
subroutine t1(  n )
integer:: n
if (n/=1) print *,0101
end subroutine
subroutine t2(  n )
integer            :: n(2)
if (any(n/=1)) print *,0102
end subroutine
function pfun()
integer,pointer:: pfun
pfun=> k
end function
function pfuna()
integer,pointer:: pfuna(:)
pfuna=> ka
end function
end
use m1
call gen( pfun() )
call gen( pfuna() )
print *,'pass'
end
