write(1,*) '&name1 x=1,2 /'
write(2,*) '&name2 y=3,4 /'
rewind 1
rewind 2
call chk
print *,'pass'
end
subroutine chk
integer x(32767:32768)
integer y(32767:32768)
namelist /name1/ x
namelist /name2/ y
read(1,name1)
read(2,name2)
if (x(32767)/=1)print *,'error-1'
if (x(32768)/=2)print *,'error-2'
if (y(32767)/=3)print *,'error-3'
if (y(32768)/=4)print *,'error-4'
end
