subroutine s
interface 
subroutine ext
end subroutine
subroutine ixt
end subroutine
end interface
call s1( ext )
call s2( ext )
call s3( ext )
call s1( ixt )
call s2( ixt )
call s3( ixt )
end
subroutine s1( k )
interface 
subroutine k
end subroutine
end interface
call ss(k)
end
subroutine s2( e )
interface 
subroutine e
end subroutine
end interface
call ss(e)
end
subroutine s3( z )
implicit none
interface 
subroutine z
end subroutine
end interface
call ss(z)
end
subroutine ss(x)
call x
end
subroutine ext
common n
n=n+1
end
subroutine ixt
common n
n=n+1
end
common n
n=0
call s
if (n/=6) print *,101
print *,'pass'
end
