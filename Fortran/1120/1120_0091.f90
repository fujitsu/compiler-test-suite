call test01()
print *,"pass"
end

subroutine test01()
integer a,b,c,d
common /com/a,b,k
!$omp task default(private)
!$omp task shared(/com/)
!$omp task private(d)
 b=111
 a=111
!$omp endtask
!$omp endtask
!$omp endtask

!$omp task default(private)
!$omp task shared(/com/)
!$omp task shared(/com/) private(d)
 b=111
 a=111
!$omp endtask
!$omp endtask
!$omp endtask

!$omp task default(private) shared(/com/)
!$omp task private(c,a)
!$omp task shared(/com/) private(d)
 b=111
k=1
 a=111
!$omp endtask
!$omp endtask
!$omp endtask

 end
