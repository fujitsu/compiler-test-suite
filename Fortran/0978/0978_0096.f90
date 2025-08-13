character(256) :: command
integer :: length
integer :: status
call get_command(command,length,status)

write(36,*)trim(command)
write(36,*)length
write(36,*)status
print *,'pass'
end
