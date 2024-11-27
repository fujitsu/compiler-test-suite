 call s1
 print *,'pass'
 end
 subroutine s1
write(1,*)'! Namelist data'
write(1,*)' &AA I=10,J=20/'
rewind 1
call ss1
end
subroutine ss1
       namelist /aa/i,j
       read(1,aa)
if (i/=10)write(6,*) "NG"
if (j/=20)write(6,*) "NG"
end
