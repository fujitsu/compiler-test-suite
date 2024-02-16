program main
call foo(1)
end

subroutine foo(j)
common/com/k
common/res/n(2,2)
!$omp single
!$omp parallel do shared(j)
do i=1,2
!$omp critical
  k = i
  call sub1(j)
  call sub2(j+1)
!$omp end critical
enddo
!$omp end parallel do
!$omp end single
print *,'PASS',n
end 

subroutine sub1(j)
  common/com/k
  common/res/n(2,2)
  integer :: k
  n(j,k) = j+k
end 

subroutine sub2(j)
  common/com/k
  common/res/n(2,2)
  integer :: k
  n(j,k) = j+k
end 
