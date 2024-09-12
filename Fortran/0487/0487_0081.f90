module m1
integer,target:: k=1,ka(2)=1
interface gen
  procedure t1,t2
end interface
contains
subroutine t1(  n )
integer,intent(out):: n
n=2
end subroutine
subroutine t2(  n )
integer,intent(out):: n(2)
n=2
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
integer:: n
call gen( pfun() )
call gen( pfuna() )
print *,'pass'
end
