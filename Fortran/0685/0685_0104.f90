call aaaaa
print *,'pass'
end
subroutine aaaaa
integer a(10),i,j,k,l
common /com/b(10)
b=(/(l,l=1,10)/)
!$omp parallel shared(l)
!$omp parallel firstprivate(/com/)
!$omp single private(a,i)
j=1
k=10
a=(/(i,i=j,k)/)
b=a
!$omp endsingle nowait
if(any(b/=(/(i,i=1,10)/))) print *,"fail"
!$omp endparallel
!$omp endparallel
!$omp single firstprivate(j,k)
if(j.ne.1) print *,"fail"
if(k.ne.10) print *,"fail"
!$omp endsingle nowait
end
