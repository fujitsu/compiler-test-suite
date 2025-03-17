i=1
call t03(i)
if (i/=3)print *,'error-03'
i=1
call t04(i)
if (i/=2)print *,'error-04'
i=1
call t05(i)
if (i/=2)print *,'error-05'
print *,'pass'
end
subroutine t05(i)
 a=1
!$omp atomic
  i=a+i
end
subroutine t04(i)
complex a
a=1
!$omp atomic
  i=i+a
end
subroutine t03(i)
complex a
a=1
!$omp atomic
  i=a+a+i
end
