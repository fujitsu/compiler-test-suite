call aaaaa
print *,'pass'
end
subroutine aaaaa
integer a(10),i,j,k,l
common /com/b(10)
b=(/(l,l=1,10)/)
!$omp task shared(l)
!$omp task firstprivate(/com/)
!$omp parallel firstprivate(/com/)
j=1
k=10
a=(/(i,i=j,k)/)
b=a
if(any(b/=(/(i,i=1,10)/))) print *,'err'
!$omp endparallel
!$omp endtask
!$omp endtask
!$omp single firstprivate(j,k)
!$omp endsingle nowait
end
