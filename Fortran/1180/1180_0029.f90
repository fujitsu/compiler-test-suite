subroutine s1
write(40,'(32767 b33)') 3,5
write(40,'(32768 b33)') 3,5
write(40,'(1000000 b33)') 3,5
write(40,'(2147483647 b33)') 3,5
end
call s1
call chk
print *,'sngg977m : pass'
end
subroutine chk
integer::a,b
rewind 40
read(40,*) a,b
if (a/=11) print *,1011
if (b/=101) print *,1012
read(40,*) a,b
if (a/=11) print *,1001
if (b/=101) print *,1002
read(40,*) a,b
if (a/=11) print *,1001
if (b/=101) print *,1002
read(40,*) a,b
if (a/=11) print *,1001
if (b/=101) print *,1002
end
