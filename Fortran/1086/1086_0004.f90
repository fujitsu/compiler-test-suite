integer :: jjj=1,arr(10)=1
!associate(iii=>jjj+1)
associate(iii=>int(arr))
!$omp task depend(in:iii(int(1)))
!$omp end task
end associate
print *,'pass'
end
