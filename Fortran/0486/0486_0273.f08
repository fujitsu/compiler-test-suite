subroutine s1(c)
character(*):: c
integer::k=999
call execute_command_line( c , wait=.false. , cmdstat=k )
if (k/= -2) print *,1001
end
call s1(" ")
print *,'pass'
end
