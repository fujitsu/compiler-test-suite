subroutine s1
integer,allocatable:: a
namelist /nama/ a
allocate(a)
a=1
write(1,nama)
end
call s1
call chk
print *,'pass'
end
subroutine chk
integer:: a
namelist /nama/ a
rewind 1
read(1,nama) 
if(a/=1)print *,'error-1'
end
