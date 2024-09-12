subroutine s1
write(1,'(32767 b)') 3,5
write(1,'(32768 b)') 3,5
write(1,'(1000000 b)') 3,5
write(1,'(2147483647 b)') 3,5
end
call s1
call chk
print *,'pass'
end
subroutine chk
integer::a,b
rewind 1
read(1,*) a,b
if (a/=11) print *,1011
if (b/=101) print *,1012
read(1,*) a,b
if (a/=11) print *,1001
if (b/=101) print *,1002
read(1,*) a,b
if (a/=11) print *,1001
if (b/=101) print *,1002
read(1,*) a,b
if (a/=11) print *,1001
if (b/=101) print *,1002
end
