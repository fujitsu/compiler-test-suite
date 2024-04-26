subroutine test01()
integer,dimension(:),pointer :: q
common /com04/ q
!$omp parallel private(/com04/)
   allocate(q(10))
   q=1
!$omp end parallel
end
print *,'pass'
end

