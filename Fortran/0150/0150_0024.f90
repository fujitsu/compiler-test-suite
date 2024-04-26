integer::k
common /cmn/ n
!$omp threadprivate(k,/cmn/)
k=1
n=1
print *,'pass'
end
