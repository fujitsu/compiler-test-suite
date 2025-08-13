IMPLICIT real*8 (a-h,o-z)
double precision dd(2)
dd(1)=1.0d-100
dd(2)=-160.0d0
write(4,*) dd(1)
write(4,*) dd(2)
write(4,'(d25.15)') dd(1)
write(4,'(d25.15)') dd(2)
call sub
print *,'pass'
end
subroutine sub
real*8 x
rewind  4
read(4,*) x;if (abs(x-1.d-100)>0.0001)print *,'error-1'
read(4,*) x;if (abs(x+160.)>1.)print *,'error-2'
read(4,*) x;if (abs(x-1.d-100)>0.0001)print *,'error-3'
read(4,*) x;if (abs(x+160.)>1.)print *,'error-4'
end
