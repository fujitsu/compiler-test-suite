write(32,*) '&name1 x(32767:32768)=1,2 /'
write(33,*) '&name2 y(32767:32768)=3,4 /'
rewind 32
rewind 33
call chk
print *,'pass'
end
subroutine chk
integer x(32767:32768)
integer y(32767:32768)
namelist /name1/ x
namelist /name2/ y
read(32,name1)
read(33,name2)
if (x(32767)/=1)print *,'error-1'
if (x(32768)/=2)print *,'error-2'
if (y(32767)/=3)print *,'error-3'
if (y(32768)/=4)print *,'error-4'
end
