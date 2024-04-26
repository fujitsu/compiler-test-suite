character(len=30) :: string
integer :: pos, len
pos = 2
call get_command_argument(pos, string, len)
print *,'pass'
end
