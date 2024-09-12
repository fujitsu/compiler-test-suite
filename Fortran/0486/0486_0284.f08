subroutine s
interface 
subroutine t()
end subroutine
end interface
call s2( t )
call s3( t )
end
subroutine s2( k )
interface 
subroutine  k()
end subroutine
end interface
call ss(k)
end
subroutine s3( e )
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
common n
n=0
call s
if (n/=2) print *,101
print *,'pass'
end
