integer(4) x,xa(2)
call       ss(x,xa)
print *,'pass'
end
subroutine ss(x,xa)
integer(4) x,xa(2)
integer(4) y,ya(2)
integer(1),parameter::pa=1.,qa(2)=(/3,1/)
integer(2),parameter::pb=1.,qb(2)=(/3,1/)
integer(4),parameter::pc=1.,qc(2)=(/3,1/)
integer(8),parameter::pd=1.,qd(2)=(/3,1/)
real(4),parameter::pe=1.,qe(2)=(/3,1/)
real(8),parameter::pf=1.,qf(2)=(/3,1/)
x=1.0;xa(2)=1.
y=1.0;ya(2)=1.

!$omp atomic
x=1_1+x
!$omp atomic
x=1_2+x
!$omp atomic
x=1_4+x
!$omp atomic
x=1_8+x
!$omp atomic
x=1.0_4+x
!$omp atomic
x=1.0_8+x
if (abs(x-7)>0.001)print *,'error-1'
!$omp atomic
xa(2)=1_1+xa(2)
!$omp atomic
xa(2)=1_2+xa(2)
!$omp atomic
xa(2)=1_4+xa(2)
!$omp atomic
xa(2)=1_8+xa(2)
!$omp atomic
xa(2)=1.0_4+xa(2)
!$omp atomic
xa(2)=1.0_8+xa(2)
if (abs(xa(2)-7)>0.001)print *,'error-2'
!$omp atomic
y=1_1+y
!$omp atomic
y=1_2+y
!$omp atomic
y=1_4+y
!$omp atomic
y=1_8+y
!$omp atomic
y=1.0_4+y
!$omp atomic
y=1.0_8+y
if (abs(y-7)>0.001)print *,'error-3'
!$omp atomic
ya(2)=1_1+ya(2)
!$omp atomic
ya(2)=1_2+ya(2)
!$omp atomic
ya(2)=1_4+ya(2)
!$omp atomic
ya(2)=1_8+ya(2)
!$omp atomic
ya(2)=1.0_4+ya(2)
!$omp atomic
ya(2)=1.0_8+ya(2)
if (abs(ya(2)-7)>0.001)print *,'error-4'
!$omp atomic
x=pa+x
!$omp atomic
x=pb+x
!$omp atomic
x=pc+x
!$omp atomic
x=pd+x
!$omp atomic
x=pe+x
!$omp atomic
x=pf+x
if (abs(x-13)>0.001)print *,'error-11'
!$omp atomic
xa(2)=pa+xa(2)
!$omp atomic
xa(2)=pb+xa(2)
!$omp atomic
xa(2)=pc+xa(2)
!$omp atomic
xa(2)=pd+xa(2)
!$omp atomic
xa(2)=pe+xa(2)
!$omp atomic
xa(2)=pf+xa(2)
if (abs(xa(2)-13)>0.001)print *,'error-12'
!$omp atomic
y=pa+y
!$omp atomic
y=pb+y
!$omp atomic
y=pc+y
!$omp atomic
y=pd+y
!$omp atomic
y=pe+y
!$omp atomic
y=pf+y
if (abs(y-13)>0.001)print *,'error-13'
!$omp atomic
ya(2)=pa+ya(2)
!$omp atomic
ya(2)=pb+ya(2)
!$omp atomic
ya(2)=pc+ya(2)
!$omp atomic
ya(2)=pd+ya(2)
!$omp atomic
ya(2)=pe+ya(2)
!$omp atomic
ya(2)=pf+ya(2)
if (abs(ya(2)-13)>0.001)print *,'error-14'
!$omp atomic
x=qa(2)+x
!$omp atomic
x=qb(2)+x
!$omp atomic
x=qc(2)+x
!$omp atomic
x=qc(2)+x
!$omp atomic
x=qe(2)+x
!$omp atomic
x=qf(2)+x
if (abs(x-19)>0.001)print *,'error-21'
!$omp atomic
xa(2)=qa(2)+xa(2)
!$omp atomic
xa(2)=qb(2)+xa(2)
!$omp atomic
xa(2)=qc(2)+xa(2)
!$omp atomic
xa(2)=qd(2)+xa(2)
!$omp atomic
xa(2)=qe(2)+xa(2)
!$omp atomic
xa(2)=qf(2)+xa(2)
if (abs(xa(2)-19)>0.001)print *,'error-22'
!$omp atomic
y=qa(2)+y
!$omp atomic
y=qb(2)+y
!$omp atomic
y=qc(2)+y
!$omp atomic
y=qd(2)+y
!$omp atomic
y=qe(2)+y
!$omp atomic
y=qf(2)+y
if (abs(y-19)>0.001)print *,'error-23'
!$omp atomic
ya(2)=qa(2)+ya(2)
!$omp atomic
ya(2)=qb(2)+ya(2)
!$omp atomic
ya(2)=qc(2)+ya(2)
!$omp atomic
ya(2)=qd(2)+ya(2)
!$omp atomic
ya(2)=qe(2)+ya(2)
!$omp atomic
ya(2)=qf(2)+ya(2)
if (abs(ya(2)-19)>0.001)print *,'error-24'
end
