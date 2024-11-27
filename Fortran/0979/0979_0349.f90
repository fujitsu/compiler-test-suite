call aaaaa
call bbbbb
print *,'pass'
contains
subroutine aaaaa
integer cmd_count
cmd_count = COMMAND_ARGUMENT_COUNT()
if(cmd_count.ne.0) write(6,*) "NG"
end subroutine
subroutine bbbbb
do i=1, COMMAND_ARGUMENT_COUNT()
print *,'err'
end do
end subroutine
end
