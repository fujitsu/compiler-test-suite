subroutine s1
write(1, '(g0.3)') 123.456
end
call s1
call chk
print *,'pass'
end
subroutine chk
character(100) r
rewind 1
read(1,'(a)') r
if (adjustl(r)/='123.')print *,101
end
