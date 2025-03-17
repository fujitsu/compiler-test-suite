module m1
integer,parameter::i=2
integer,parameter::j=3
contains
subroutine s1
call ss1
contains
subroutine ss1
complex x
write(1,*) (i,j)
rewind 1
read(1,*) x
if (abs(x-(2,3))>0.001)write(6,*) "NG"
end subroutine
end subroutine
end
use m1,jj=>j,ii=>i
complex x
call s1
write(2,*) (ii,jj)
rewind 2
read(2,*) x
if (abs(x-(2,3))>0.001)write(6,*) "NG"
call s0
print *,'pass'
contains
subroutine s0
write(3,*) (ii,jj)
rewind 3
read(3,*) x
if (abs(x-(2,3))>0.001)write(6,*) "NG"
if (abs(x-(ii,jj))>0.001)write(6,*) "NG"
end subroutine
end
