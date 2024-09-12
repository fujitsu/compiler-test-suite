module m1
contains
elemental function kk( d )
integer,intent(in):: d
integer:: x(d)
x=1
kk=0
if (size(x)/=d) kk= 1
end function
end
use m1
if (any( kk( [2,3]) /= 0) ) print *,101
print *,'pass'
end
