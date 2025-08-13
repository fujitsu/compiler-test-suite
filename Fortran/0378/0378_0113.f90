subroutine s1
dimension k2(2),n2(2)
namelist /nam1/k1,k2
namelist /nam2/n1,n2
k1=1
k2=[1,2]
write(52,nam1)
!$omp parallel
n1=1
n2=[1,2]
write(53,nam2)
!$omp end parallel
end
call s1
print *,'pass'
end
