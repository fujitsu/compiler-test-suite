subroutine s1
 namelist /nam/ a1
 integer:: a1
 namelist /nam2/ a2
 integer,pointer:: a2
 allocate(a2)
 a1=1
 a2=2
write(1,nam)
write(2,nam2)
end
call s1
call chk
print *,'pass'
end
subroutine chk
 integer:: a1
 integer,pointer:: a2
 namelist /nam/ a1
 namelist /nam2/ a2
 allocate(a2)
rewind 1
rewind 2
read(1,nam)
read(2,nam2)
if (a1/=1) print *,101
if (a2/=2) print *,102
end
