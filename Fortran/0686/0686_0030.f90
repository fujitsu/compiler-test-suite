call test01()
call test02()
call test03()
print *,'pass'
end 

subroutine test03()
ifun(i)=i 
i=1
ip=1
!$omp parallel private(ip) num_threads(int(i))
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(int(ip))
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(int(11))
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(int(2.0))
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(ifun(ip))
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(jfun(ip))
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(1_1)
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(1_2)
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(1_4)
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(1_8)
ip=2
!$omp end parallel
end
function jfun(i)
jfun=i
end

subroutine test02()
end

subroutine test01()
end
