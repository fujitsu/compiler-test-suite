integer,allocatable::a(:)
integer::b(2)
allocate(a(2))
!$omp parallel firstprivate(a,b)
a(1)=1
a(2)=2
b(1)=a(1)
b(2)=a(2)
!$omp endparallel
if (b(1).ne.a(1)) write(6,*) "NG"
if (b(2).ne.a(2)) write(6,*) "NG"
print *,"pass"
end
