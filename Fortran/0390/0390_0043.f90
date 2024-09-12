subroutine s1
namelist /nam/ k1,k2
read(1,nam)
if (k1/=1) print *,101
if (k2/=2) print *,102
end
call w
call s1
print *,'pass'
end
subroutine w
write(1,'(a)') '&nam'
write(1,'(a)') '   ! comment'
write(1,'(a)') '   ! comment'
write(1,'(a)') '   k1=1'
write(1,'(a)') '   k2=2'
write(1,'(a)') '/'
write(1,'(a)') ''
rewind 1
end
