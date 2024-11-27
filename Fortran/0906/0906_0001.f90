character :: ch
logical :: w
integer :: ii
ch='grep'
w=.true.
call execute_command_line(command=ch,wait=w,cmdstat=ii)
end
