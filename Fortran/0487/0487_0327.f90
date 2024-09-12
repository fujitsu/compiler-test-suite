module m1
contains
pure function kf( n )
value :: n
kf=n
end function
end
use m1
interface
pure function nf( n )
value :: n
end function
end interface
if (kf(1)/=1) print *,201
if (nf(1)/=2) print *,202
print *,'pass'
end

pure function nf( n )
value :: n
nf=n+1
end function
