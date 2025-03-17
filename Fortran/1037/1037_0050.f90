i=1; k=3
call t01(i,k)
if (i/=-4)print *,'error-01'
i=1; k=3
call t02(i,k)
if (i/=4)print *,'error-02'
i=1; k=3
call t03(i,k)
if (i/=7)print *,'error-03'
i=1; k=3
call t04(i,k)
if (i/=5)print *,'error-04'
i=1; k=3
call t05(i,k)
if (i/=5)print *,'error-04'
print *,'pass'
end
subroutine t05(i,k)
!$omp atomic
  i=-((-k)+(-k))-i
end
subroutine t04(i,k)
!$omp atomic
  i=-(-k-k)-i
end
subroutine t03(i,k)
!$omp atomic
  i=i-((-k)+(-k))
end
subroutine t02(i,k)
!$omp atomic
  i=i-(-k)
end
subroutine t01(i,k)
!$omp atomic
  i=-k-i
end
