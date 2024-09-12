subroutine s
interface 
function   t()
end function
end interface
call s1( t )
call s2( t )
call s3( t )
end
subroutine s1( k )
external:: k
call ss(k)
end
subroutine s2( k )
interface 
real function    k()
end function
end interface
call ss(k)
end
subroutine s3( e )
interface 
function    e()
end function  
end interface
call ss(e)
end
subroutine ss(x)
if ( x()/=100) print *,102
end
function   t()
common n
n=n+1
t=100
end
common n
n=0
call s
if (n/=3) print *,101
print *,'pass'
end
