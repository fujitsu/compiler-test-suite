call s()
print *,'pass'
end
subroutine s()
character(len=30) :: env = 'SHELL'
character(len=30) :: string
call get_environment_variable(env, string)
if(env.ne."SHELL") print *,'err'
if(len_trim(string).eq.0) then
 if (string.ne."                              ") print *,'err'
end if
end
