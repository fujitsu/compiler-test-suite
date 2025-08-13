 call s1
 print *,'pass'
 end
 subroutine s1
write(18,*)'! Namelist data'
write(18,*)' &AA I=10,J=20/'
rewind 18
call ss1
end
subroutine ss1
       namelist /aa/i,j
       read(18,aa)
if (i/=10)write(6,*) "NG"
if (j/=20)write(6,*) "NG"
end
