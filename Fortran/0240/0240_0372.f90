call s()
print *,'pass'
end
subroutine s()
character(len=30) :: string
integer :: len
call get_command(string, len)
if (1.eq.2) then
if(string.ne."a.out") print *,'err'
if(len.ne.5) print *,'err'
endif
end
