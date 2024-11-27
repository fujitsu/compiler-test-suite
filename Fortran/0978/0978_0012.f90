subroutine s1
intrinsic command_argument_count
intrinsic get_command_argument
intrinsic get_command
intrinsic get_environment_variable
character*1000 a1,a2
call get_command
call get_command(a1)
write(1,*)trim(a1)
call get_command_argument(0)
i=command_argument_count()
write(1,*)i
call get_environment_variable('path',a2)
write(1,*)trim(a2)
end
subroutine s2
character*1000 a1,a2
call get_command
call get_command(a1)
write(1,*)trim(a1)
call get_command_argument(0)
i=command_argument_count()
write(1,*)i
call get_environment_variable('path',a2)
write(1,*)trim(a2)
end
call s1
call s2
print *,'pass'
end
