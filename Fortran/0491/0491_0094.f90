integer:: k/1/
integer:: n/0/
!$omp threadprivate (k)
!$omp threadprivate (n)
if (k/=1) print *,101,k
if (n/=0) print *,102,n
print *,'pass'
end
