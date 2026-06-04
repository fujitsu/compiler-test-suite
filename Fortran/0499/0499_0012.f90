integer ::a(100,100)
a=1
!$omp workshare
a=a
!$omp end workshare
print *,'pass'
end
