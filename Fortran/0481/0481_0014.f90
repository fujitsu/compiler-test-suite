integer :: a(10)
integer :: b(10)
a=1
b=1
a=a
b=b
!$omp atomic capture
a(1)=b(1)
b(1)=1+a(1)
!$omp end atomic
print *,'pass'
end
