write(28,*) '&name1 x(32767)=1 /'
write(29,*) '&name2 y(32768)=2 /'
rewind 28
rewind 29
call chk
print *,'pass'
end
subroutine chk
integer x(32767:32768)
integer y(32767:32768)
namelist /name1/ x
namelist /name2/ y
read(28,name1)
read(29,name2)
if (x(32767)/=1)print *,'error-1'
if (y(32768)/=2)print *,'error-2'
end
