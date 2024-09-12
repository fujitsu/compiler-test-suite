integer a(10),b(10)
a=-1
i=1
!$omp workshare
a(i)=i
a(i+1)=a(i+2)+1
!$omp end workshare
print *,'pass'
end

