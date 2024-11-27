integer,allocatable::a(:)
allocate(a(10))
a(1)=1
!$omp parallel firstprivate(a)
do i=1,10
a(i)=a(i)+a(i)
enddo
!$omp endparallel
print *,"pass"
end
