subroutine s1
write(42,'(32767 d15.8)') 3.,5.
write(42,'(32768 d15.8)') 3.,5.
write(42,'(65000 d15.8)') 3.,5.
write(42,'(1000000 d15.8)') 3.,5.
write(42,'(2147483647 d15.8)') 3.,5.
end
call s1
call chk
print *,'sngg980m : pass'
end
subroutine chk
real   ::a,b
rewind 42
read(42,*) a,b
if (a/=3.) print *,5.11
if (b/=5.) print *,5.21
read(42,*) a,b
if (a/=3.) print *,5.1
if (b/=5.) print *,5.2
read(42,*) a,b
if (a/=3.) print *,1001
if (b/=5.) print *,1002
read(42,*) a,b
if (a/=3.) print *,1001
if (b/=5.) print *,1002
read(42,*) a,b
if (a/=3.) print *,1001
if (b/=5.) print *,1002
end
