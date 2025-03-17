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
x=x+1_1
!$omp atomic
x=x+1_2
!$omp atomic
x=x+1_4
!$omp atomic
x=x+1_8
!$omp atomic
x=x+1.0_4
!$omp atomic
x=x+1.0_8
if (abs(x-7)>0.001)print *,'error-1'
!$omp atomic
xa(2)=xa(2)+1_1
!$omp atomic
xa(2)=xa(2)+1_2
!$omp atomic
xa(2)=xa(2)+1_4
!$omp atomic
xa(2)=xa(2)+1_8
!$omp atomic
xa(2)=xa(2)+1.0_4
!$omp atomic
xa(2)=xa(2)+1.0_8
if (abs(xa(2)-7)>0.001)print *,'error-2'
!$omp atomic
y=y+1_1
!$omp atomic
y=y+1_2
!$omp atomic
y=y+1_4
!$omp atomic
y=y+1_8
!$omp atomic
y=y+1.0_4
!$omp atomic
y=y+1.0_8
if (abs(y-7)>0.001)print *,'error-3'
!$omp atomic
ya(2)=ya(2)+1_1
!$omp atomic
ya(2)=ya(2)+1_2
!$omp atomic
ya(2)=ya(2)+1_4
!$omp atomic
ya(2)=ya(2)+1_8
!$omp atomic
ya(2)=ya(2)+1.0_4
!$omp atomic
ya(2)=ya(2)+1.0_8
if (abs(ya(2)-7)>0.001)print *,'error-4'
!$omp atomic
x=x+pa
!$omp atomic
x=x+pb
!$omp atomic
x=x+pc
!$omp atomic
x=x+pd
!$omp atomic
x=x+pe
!$omp atomic
x=x+pf
if (abs(x-13)>0.001)print *,'error-11'
!$omp atomic
xa(2)=xa(2)+pa
!$omp atomic
xa(2)=xa(2)+pb
!$omp atomic
xa(2)=xa(2)+pc
!$omp atomic
xa(2)=xa(2)+pd
!$omp atomic
xa(2)=xa(2)+pe
!$omp atomic
xa(2)=xa(2)+pf
if (abs(xa(2)-13)>0.001)print *,'error-12'
!$omp atomic
y=y+pa
!$omp atomic
y=y+pb
!$omp atomic
y=y+pc
!$omp atomic
y=y+pd
!$omp atomic
y=y+pe
!$omp atomic
y=y+pf
if (abs(y-13)>0.001)print *,'error-13'
!$omp atomic
ya(2)=ya(2)+pa
!$omp atomic
ya(2)=ya(2)+pb
!$omp atomic
ya(2)=ya(2)+pc
!$omp atomic
ya(2)=ya(2)+pd
!$omp atomic
ya(2)=ya(2)+pe
!$omp atomic
ya(2)=ya(2)+pf
if (abs(ya(2)-13)>0.001)print *,'error-14'
!$omp atomic
x=x+qa(2)
!$omp atomic
x=x+qb(2)
!$omp atomic
x=x+qc(2)
!$omp atomic
x=x+qc(2)
!$omp atomic
x=x+qe(2)
!$omp atomic
x=x+qf(2)
if (abs(x-19)>0.001)print *,'error-21'
!$omp atomic
xa(2)=xa(2)+qa(2)
!$omp atomic
xa(2)=xa(2)+qb(2)
!$omp atomic
xa(2)=xa(2)+qc(2)
!$omp atomic
xa(2)=xa(2)+qd(2)
!$omp atomic
xa(2)=xa(2)+qe(2)
!$omp atomic
xa(2)=xa(2)+qf(2)
if (abs(xa(2)-19)>0.001)print *,'error-22'
!$omp atomic
y=y+qa(2)
!$omp atomic
y=y+qb(2)
!$omp atomic
y=y+qc(2)
!$omp atomic
y=y+qd(2)
!$omp atomic
y=y+qe(2)
!$omp atomic
y=y+qf(2)
if (abs(y-19)>0.001)print *,'error-23'
!$omp atomic
ya(2)=ya(2)+qa(2)
!$omp atomic
ya(2)=ya(2)+qb(2)
!$omp atomic
ya(2)=ya(2)+qc(2)
!$omp atomic
ya(2)=ya(2)+qd(2)
!$omp atomic
ya(2)=ya(2)+qe(2)
!$omp atomic
ya(2)=ya(2)+qf(2)
if (abs(ya(2)-19)>0.001)print *,'error-24'
end
