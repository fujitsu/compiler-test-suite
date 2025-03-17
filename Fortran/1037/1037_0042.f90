subroutine sub(m,mm)
integer(8) k(2),i,j,m
integer(4) kk(2),ii,jj,mm
i=2;j=4;k(2)=5
ii=2;jj=4;kk(2)=5
!$omp atomic
i=max(i,jj)
if (i/=4)print *,'error-1'
!$omp atomic
k(2)=max(k(2),jj)
if (k(2)/=5)print *,'error-2'
!$omp atomic
k(2)=max(k(2),jj,ii)
if (k(2)/=5)print *,'error-3'
!$omp atomic
i=max(i,kk(2))
if (i/=5)print *,'error-4'
!$omp atomic
i=max(i,mm)
if (i/=6)print *,'error-5'
!$omp atomic
i=max(i,mm+mm)
if (i/=12)print *,'error-6'
!$omp atomic
i=max(i,16)
if (i/=16)print *,'error-7'
end
integer(8) m
m=6
mm=6
call sub(m,mm)
print *,'pass'
end
