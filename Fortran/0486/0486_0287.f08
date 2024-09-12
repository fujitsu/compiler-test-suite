subroutine s
interface 
function   m()
end function
end interface
call s2( m )
call s3( m )
end
subroutine s2( a )
interface 
integer function    a()
end function
end interface
call ss(a)
end
subroutine s3( k )
interface 
function    k()
end function  
end interface
call ss(k)
end
subroutine ss(nx)
if ( nx()/=100) print *,102
end
function   m()
common n
n=n+1
m=100
end
common n
n=0
call s
if (n/=2) print *,101
print *,'pass'
end
