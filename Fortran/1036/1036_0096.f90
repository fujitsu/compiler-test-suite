write(26,*) '&name1 x(32767)=1 /'
write(27,*) '&name2 y(32768)=2 /'
rewind 26
rewind 27
call chk
print *,'pass'
end
subroutine chk
integer x(400000)
integer y(400000)
namelist /name1/ x
namelist /name2/ y
read(26,name1)
read(27,name2)
if (x(32767)/=1)print *,'error-1'
if (y(32768)/=2)print *,'error-2'
end
