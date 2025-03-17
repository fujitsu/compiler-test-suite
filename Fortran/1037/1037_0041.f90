subroutine sub(m)
integer k(2)
i=2;j=4;k(2)=5
!$omp atomic
i=max(i,j)
if (i/=4)print *,'error'
!$omp atomic
k(2)=max(k(2),j)
if (k(2)/=5)print *,'error'
!$omp atomic
k(2)=max(k(2),j,i)
if (k(2)/=5)print *,'error'
!$omp atomic
i=max(i,k(2))
if (i/=5)print *,'error'
!$omp atomic
i=max(i,m)
if (i/=6)print *,'error'
!$omp atomic
i=max(i,m+m)
if (i/=12)print *,'error'
end
m=6
call sub(m)
print *,'pass'
end
