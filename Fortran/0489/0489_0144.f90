subroutine s1(c)
character(*):: c
integer::k=999,n=999,system,nn=9999
nn=  system( c )
call execute_command_line( c , wait=.true. , exitstat= n,cmdstat=k )
if (k/= 0) print *,1001
if (n/=  0) print *,1002,n
if (nn/=  0) print *,1012,nn
end
call s1("")
print *,'pass'
end

