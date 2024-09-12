subroutine s
external:: ext,ixt
call s1( ext )
call s2( ext )
call s3( ext )
call s1( ixt )
call s2( ixt )
call s3( ixt )
call ext
call ixt
end
subroutine s1( k )
external:: k
call ss(k)
call k
end
subroutine s2( e )
external:: e
call ss(e)
call e
end
subroutine s3( z )
implicit none
external:: z
call ss(z)
call z
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
if (n/=14) print *,101,n
print *,'pass'
end
