character(256) :: command
integer :: length
integer :: status
call get_command(command,length,status)

write(1,*)trim(command)
write(1,*)length
write(1,*)status
print *,'pass'
end
