k=101
n=101
call execute_command_line( "echo 'abc' > fort.1",cmdstat=n, exitstat=k) 
if (n/=0) print *,101
if (k/=0) print *,102
print *,'pass'
end
