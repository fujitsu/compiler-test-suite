subroutine s
interface 
subroutine t()
end subroutine
subroutine m()
end subroutine
end interface
call s2( t )
call s3( t )
call s2( m )
call s3( m )
end
subroutine s2( k )
interface 
subroutine  k()
end subroutine
end interface
call s22(k)
call s33(k)
end
subroutine s3( e )
interface 
subroutine  e()
end subroutine
end interface
call s22(e)
call s33(e)
end
subroutine s22( k )
interface 
subroutine  k()
end subroutine
end interface
call ss(k)
end
subroutine s33( e )
interface 
subroutine  e()
end subroutine
end interface
call ss(e)
end
subroutine ss(x)
call x
end
subroutine t()
common n
n=n+1
end
subroutine m()
common n
n=n+1
end
common n
n=0
call s
if (n/=8) print *,101
print *,'pass'
end
