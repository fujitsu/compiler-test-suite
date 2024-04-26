subroutine s1
k2=0
write(1,'(i1)') 1
write(1,'(i1)') 2
rewind 1
read (1,'(i10/i10)',advance='no',iostat=k) k1,k2
if (k==0) print *,100
if (k1/=1) print *,101
if (k2/=0) print *,102
end
call s1
print *,'pass'
end
