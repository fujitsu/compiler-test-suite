recursive subroutine s1
integer,allocatable,dimension(:):: a
namelist /nam/ a
allocate(a(2))
a=(/1,2/)
write(1,nam)
call chk
end
call s1
print *,'pass'
end
subroutine chk
integer,dimension(2):: a
namelist /nam/ a
rewind 1
read(1,nam)
if (any(a/=(/1,2/)))print *,a
end
