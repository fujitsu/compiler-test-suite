i=1
k=3
call t(i,k)
if (i/=-4)print *,'error'
print *,'pass'
end
subroutine t(i,k)
!$omp atomic
  i=(-k)-i
end
