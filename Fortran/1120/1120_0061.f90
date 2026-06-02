call test01()
print *,"pass"
end

subroutine test01()
integer arr(10)
integer,pointer :: ip
allocate(ip)
ip=1
arr=1
!$omp task
ip=2
!$omp end task
end 
