character(65000)::a=repeat("1",65000)
character(65000)::b(1000)=repeat("1",65000)
j=65000
!$omp parallel
do k=1,1
!$omp  task depend(out:a(k:j))
if(len(a)/=65000) print *,'err1'
!$omp  end task
!$omp task depend(in:b(:)(k:j))
if(len(b)/=65000) print *,'err2'
!$omp end task 
!$omp task depend(inout:b(k:)(k:j))
if(len(b)/=65000) print *,'err3'
!$omp end task 
enddo
!$omp end parallel
print *,'pass'
end
