write(34,*) '&name1 x(32767:32767)=1 /'
write(35,*) '&name2 y(32768:32768)=2 /'
rewind 34
rewind 35
call chk
print *,'pass'
end
subroutine chk
integer x(400000)
integer y(400000)
namelist /name1/ x
namelist /name2/ y
read(34,name1)
read(35,name2)
if (x(32767)/=1)print *,'error-1'
if (y(32768)/=2)print *,'error-2'
end
