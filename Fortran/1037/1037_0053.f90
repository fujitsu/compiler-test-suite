i=1
k=1
call t03(i,k)
if (i/=3)print *,'error-03'
i=1
call t04(i,k)
if (i/=2)print *,'error-04'
i=1
call t05(i,k)
if (i/=2)print *,'error-05'
print *,'pass'
end
subroutine t05(i,k)
!$omp atomic
  i=k+i
end
subroutine t04(i,a)
integer a
!$omp atomic
  i=i+a
end
subroutine t03(i,a)
integer a
!$omp atomic
  i=a+a+i
end
