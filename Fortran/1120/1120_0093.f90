integer a(10)
a=1
call test01(a)
print *,"pass"
contains 

subroutine test01(aa)
integer aa(*)
!$omp task shared(aa)
 aa(1)=111
!$omp endtask
end subroutine
end
