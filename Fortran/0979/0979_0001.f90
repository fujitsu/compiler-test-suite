character(len=30) :: env = 'SHELL'
character(len=30) :: string
call get_environment_variable(env, string)

if(string .ne. string) write(6,*) "NG"

print *,'pass'
end
