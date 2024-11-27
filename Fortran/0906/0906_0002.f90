character :: ch
character :: m
logical :: w
ch='grep'
w=.true.
call execute_command_line(command=ch,wait=w,cmdmsg=m)
end
