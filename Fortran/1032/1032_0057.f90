complex*8 c(2)
call sub1
rewind 14
read(14,*) c
if (abs(c(1)-(1.00000,11.00000))>0.00001)print *,'error-1'
if (abs(c(2)-(2.00000,22.00000))>0.00001)print *,'error-2'
print *,'pass'
end
subroutine sub1
type zz
complex*8 c(2)
end type
type (zz) :: AA(1)
integer*4 v1(1)/1/
AA(1)%c(1)=(1.00000,11.00000)
AA(1)%c(2)=(2.00000,22.00000)
write(14,*) AA(v1)
end
