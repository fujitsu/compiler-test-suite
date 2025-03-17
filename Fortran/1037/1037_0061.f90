subroutine ss(x)
integer a(2)
dimension bb(2)
a=1;i=3;x=4;c=5;bb=6;b=7
!$omp atomic
a(1)=a(1)+1
!$omp atomic
x=x+1.0
!$omp atomic
i=i+1
!$omp atomic
i=i+a(1)
!$omp atomic
a(1)=a(1)+i
!$omp atomic
a(1)=a(1)+b
!$omp atomic
c=c+x
!$omp atomic
bb(2)=bb(2)+x
if (any(a/=(/15,1/)))print *,'error-1'
if (abs(c-10)>0.001)print *,'error-3'
if (any(abs(bb-(/6,11/))>0.001))print *,'error-2'
if (abs(x-5)>0.001)print *,'error-4'
end
x=1
call ss(x)
print *,'pass'
end
