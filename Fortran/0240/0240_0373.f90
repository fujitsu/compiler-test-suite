call s()
print *,'pass'
end
subroutine s()
character(len=30) :: string
integer :: pos, len
pos = 2
call get_command_argument(pos, string, len)
if(pos.ne.2) print *,'err1'
if(len_trim(string).ne.0) print *,'err2'
if(len.ne.0) print *,'err3'
end
