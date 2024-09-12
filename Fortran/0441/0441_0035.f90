subroutine s
external:: ext
call s1( ext )
end
subroutine s1( k )
external:: k
call ss(k)
end
subroutine ss(x)
call x
end
subroutine ext
common n
n=n+1
end
common n
n=0
call s
if (n/=1) print *,101
print *,'pass'
end
