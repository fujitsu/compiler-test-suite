subroutine s1
write(1,'(32768d)') 1.
end
call s1
call chk
print *,'pass'
end
subroutine chk
rewind 1
read(1,*) a
if (a/=1) print *,1001
end
