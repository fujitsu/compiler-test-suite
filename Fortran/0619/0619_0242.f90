subroutine s1
open(2,form='formatted',decimal='comma')
write(1,*,decimal='comma') (1.1233,2345.5)
write(2,*) (1.1233,2345.5)
call chk1
call chk2
end
call s1
print *,'pass'
end
subroutine chk1
complex x1
character(100) x
rewind 1
read(1,'(a)') x
if (index(x,';')==0)print *,101
rewind 1
read(1,*,decimal='comma') x1
if (abs(x1-(1.1233,2345.5))>0.0001)print *,102
end
subroutine chk2
complex x1
character(100) x
rewind 2
read(2,'(a)') x
if (index(x,';')==0)print *,101
rewind 2
read(2,*) x1
if (abs(x1-(1.1233,2345.5))>0.0001)print *,102
end


