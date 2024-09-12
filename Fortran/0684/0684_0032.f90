common /aaa/ i
common /bbb/ j
!$OMP threadprivate(/aaa/)
!$OMP threadprivate(/bbb/)
j=12
if (i/=11)print *,'error-11'
if (j/=12)print *,'error-12'
!$OMP PARALLEL 
i=21
j=22
if (i/=21)print *,'error-21'
if (j/=22)print *,'error-22'
!$OMP END PARALLEL
if (i/=21)print *,'error-31'
if (j/=22)print *,'error-32'
print *,'pass'
end
block data
common /aaa/ i
data i/11/
common /bbb/ j
!$OMP threadprivate(/aaa/)
!$OMP threadprivate(/bbb/)
end
