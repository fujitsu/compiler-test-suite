subroutine s1
write(1,'(32767 d)') 3.,5.
write(1,'(32768 d)') 3.,5.
write(1,'(65000 d)') 3.,5.
write(1,'(1000000 d)') 3.,5.
write(1,'(2147483647 d)') 3.,5.
end
call s1
call chk
print *,'pass'
end
subroutine chk
real   ::a,b
rewind 1
read(1,*) a,b
if (a/=3.) print *,5.11
if (b/=5.) print *,5.21
read(1,*) a,b
if (a/=3.) print *,5.1
if (b/=5.) print *,5.2
read(1,*) a,b
if (a/=3.) print *,1001
if (b/=5.) print *,1002
read(1,*) a,b
if (a/=3.) print *,1001
if (b/=5.) print *,1002
read(1,*) a,b
if (a/=3.) print *,1001
if (b/=5.) print *,1002
end
