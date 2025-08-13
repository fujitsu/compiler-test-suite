write(7,'(a)') '&nam ! comment'
write(7,'(a)') ' a=1 ! comment'
write(7,'(a)') ' / ! comment'
rewind 7
call ss
print *,'pass'
end
subroutine ss
integer::a
namelist/nam/a
rewind 7
read(7,nam)
if (a/=1) print *,101
end

