write(10,'(a)') '&nam '
write(10,'(a)') '! comment'
write(10,'(a)') ' a=1 ! comment'
write(10,'(a)') ' / ! comment'
rewind 10
call ss
print *,'pass'
end
subroutine ss
integer::a
namelist/nam/a
rewind 10
read(10,nam)
if (a/=1) print *,101
end

