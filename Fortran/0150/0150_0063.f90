subroutine s1
namelist /name/k1,k2
write(12,'(a)') '&name k1=1 k2=1 k1=3 /'
rewind 12
read(12,name)
if (k1/=3) print *,101
if (k2/=1) print *,102
end
call s1
print *,'pass'
end
