integer,parameter::x(3)=(/1,2,3/)
character(*),parameter::p='1234'
character*2 a,b
data i,j,k/x(1),x(2),x(3)/
data a,b/p(1:2),p(3:4)/
write(1,*)i,j,k
write(1,*)a,b
call chk
print *,'pass'
end
subroutine chk
rewind 1
read(1,*)i,j,k
if( any((/i,j,k/)/=(/1,2,3/)))print *,'error-1'
read(1,*)i
if( i/=1234)print *,'error-2'
end
