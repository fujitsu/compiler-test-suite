
character :: ch
logical :: w
 integer :: ii(2)

ch='grep'
w=.true.
call execute_command_line(command=ch,wait=w,exitstat=ii(1))
end
