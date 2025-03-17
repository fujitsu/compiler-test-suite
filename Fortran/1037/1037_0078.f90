subroutine s03
i=1;j=2
!$omp atomic
i=i+j
if (i/=3)print *,'error-20'
!$omp atomic
i=i*j
if (i/=6)print *,'error-21'
!$omp atomic
i=i-j
if (i/=4)print *,'error-22'
!$omp atomic
i=i/j
if (i/=2)print *,'error-23'
end
subroutine s02
logical x1,x2
x1=.true.;x2=.false.
!$omp atomic
x1=x1.neqv.x2
if (.not.x1)print *,'error-10'
!$omp atomic
x1=x1.eqv.x2
if (x1)print *,'error-11'
x1=.true.;x2=.false.
!$omp atomic
x1=x1.or.x2
if (.not.x1)print *,'error-12'
!$omp atomic
x1=x1.and.x2
if (x1)print *,'error-13'
end
subroutine s01
i=1;j=2
!$omp atomic
i=ieor(i,j)
if (i/=3)print *,'error-01'
!$omp atomic
i=ior(i,j)
if (i/=3)print *,'error-02'
j=2
!$omp atomic
i=iand(i,j)
if (i/=2)print *,'error-03'
j=3
!$omp atomic
i=max(i,j)
if (i/=3)print *,'error-04'
j=2
!$omp atomic
i=min(i,j)
if (i/=2)print *,'error-05'
j=3;k=-1;m=0
!$omp atomic
i=max(i,j,k,m)
if (i/=3)print *,'error-06'
j=2
!$omp atomic
i=min(i,j,k,m)
if (i/=-1)print *,'error-07'
!$omp atomic
i=max(j,k,m,i)
if (i/=2)print *,'error-08'
j=2
!$omp atomic
i=min(j,k,m,i)
if (i/=-1)print *,'error-09'
end
call s01
call s02
call s03
print *,'pass'
end
