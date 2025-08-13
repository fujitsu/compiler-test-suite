subroutine s1
namelist /nam/ k1,k2
read(14,nam)
if (k1/=1) print *,101
if (k2/=2) print *,102
end
call w
call s1
print *,'pass'
end
subroutine w
write(14,'(a)') '&nam'
write(14,'(a)') '   ! comment'
write(14,'(a)') '   ! comment'
write(14,'(a)') '   k1=1'
write(14,'(a)') '   k2=2'
write(14,'(a)') '/'
write(14,'(a)') ''
rewind 14
end
