associate(p1=>1,p2=>1)
!$omp atomic read
i=p1
!$omp atomic write
j=p2
!$omp atomic 
j=p2+j
!$omp atomic capture 
k=j
j=p1+j
!$omp end atomic
end associate
print *,'pass'
end
