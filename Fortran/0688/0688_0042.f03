i=1
j=1
k=1
!$omp parallel private(i,j,k)
j=10
k=20
goto 10
10 i=j
goto 20
20 j=k
goto 30
30 k=i
i=i+1
goto 40
40 k=0
!$omp end parallel
if(i/=j) print *,'err1'
if(j/=k) print *,'err2'
print *,'pass'
end
