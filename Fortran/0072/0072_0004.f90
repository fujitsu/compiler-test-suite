write(1,'(a)') '&nam ! comment'
write(1,'(a)') ' a=1 ! comment'
write(1,'(a)') ' / ! comment'
rewind 1
call ss
print *,'pass'
end
subroutine ss
integer::a
namelist/nam/a
rewind 1
read(1,nam)
if (a/=1) print *,101
end

