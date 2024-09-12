module m1
integer,allocatable::x
contains
pure function iproc( n )
logical,intent(in):: n
if (n) then
 iproc=1
else
 iproc=2
endif
end
end
subroutine s1()
use m1
integer:: a( iproc( allocated( x ) ) )

if (size( a ) /=2 ) print *,102
allocate(x)
call s2
end
call s1()
print *,'pass'
end
subroutine s2()
use m1
integer:: a( iproc( allocated( x ) ) )

if (size( a ) /=1 ) print *,103
end
