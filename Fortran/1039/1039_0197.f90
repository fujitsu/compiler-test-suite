module m1
integer,parameter::i=2
integer,parameter::j=3
contains
subroutine s1
complex x
write(32,*) (i,j)
rewind 32
read(32,*) x
if (abs(x-(2,3))>0.001)write(6,*) "NG"
end subroutine
end
use m1
complex x
call s1
write(37,*) (i,j)
rewind 37
read(37,*) x
if (abs(x-(2,3))>0.001)write(6,*) "NG"
print *,'pass'
end
