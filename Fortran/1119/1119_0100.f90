integer::k1(2),k2(2)
i=2
k1=100
k2=200
!$omp task depend(in:k1(2))
if(any(k1/=[100,100])) print *,"ng1"
!$omp end task
!$omp task depend(in:k2(i))
if(any(k2/=[200,200])) print *,"ng2"
!$omp end task
print *,"pass"
end program

