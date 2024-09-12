character(30)::string
integer::pos,len
pos=2
call get_command_argument(pos,string,len)
write(1,*)string
write(1,*)len
print *,'pass'
end
