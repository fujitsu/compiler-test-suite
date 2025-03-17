module m1
integer,parameter::i=2
integer,parameter::j=3
contains
subroutine s1
complex x
write(1,*) (i,j)
rewind 1
read(1,*) x
if (abs(x-(2,3))>0.001)write(6,*) "NG"
end subroutine
end
use m1
complex x
call s1
write(2,*) (i,j)
rewind 2
read(2,*) x
if (abs(x-(2,3))>0.001)write(6,*) "NG"
print *,'pass'
end
